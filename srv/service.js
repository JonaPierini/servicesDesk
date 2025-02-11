const cds = require('@sap/cds')


class servicesdeskService extends cds.ApplicationService {
    async init() {
        this.before("UPDATE", "SolicitudesUser", (req) => this.onUpdate(req))
        this.before("CREATE", "SolicitudesUser", (req) => this.onCreate(req))
        return super.init();
    }

    // Actualizar solo el estado cuando esté en cerrada por siquiere reabrirla
    async onUpdate(req) {
        const user = await req.user
        const data = await req.data
        const { estado_code, } = await SELECT.one(req.subject, i => i.estado_code).where({ ID: req.data.ID })
        if (estado_code === 'Cerrado' && !user.roles?.Admin) {
            const existingData = await SELECT.one(req.subject).where({ ID: req.data.ID });
            // Detección de cambios en campos específicos
            if (data.motivo !== existingData.motivo) {
                return req.reject(`No puede modificar el motivo`);
            }
            if (data.tipo_solicitud_ID !== existingData.tipo_solicitud_ID) {
                return req.reject(`No puede modificar el tipo de solicitud`);
            }
            if (data.urgencia_code !== existingData.urgencia_code) {
                return req.reject(`No puede modificar la urgencia`);
            }
        }
    }

    //Crear nuevas solicitudes: Podrá indicar los campos tipo de solicitud y Motivo
    async onCreate(req) {
        const user = req.user;
        const data = req.data; 
        if(user.roles?.User) {
            if (data.estado_code !== 'Nuevo') {
               await req.reject(`No puede definir el estado`);
               return
            }
            if (data.urgencia_code !== 'Bajo') {
                await req.reject(`No puede definir la urgencia`);
                return
            }
        }
    }


}

module.exports = { servicesdeskService }
const cds = require('@sap/cds')


class servicesdeskService extends cds.ApplicationService {
    async init() {
        this.before("UPDATE", "SolicitudesUser", (req) => this.onUpdate(req))
        return super.init();
    }

    async onUpdate(req) {
        const user = await req.user
        console.log(user)
        const { estado_code, } = await SELECT.one(req.subject, i => i.estado_code).where({ ID: req.data.ID })
        console.log(estado_code)
        if (estado_code !== 'Cerrado' && !user.roles?.Admin)
            return req.reject(`Can't modify a closed incident`)
        }

}

module.exports = { servicesdeskService }
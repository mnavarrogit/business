const cds = require('@sap/cds');

module.exports = cds.service.impl(async function(){

    const bupa = await cds.connect.to('OP_API_BUSINESS_PARTNER_SRV');
    const { Customer, Supplier } = this.entities;

    this.on('READ', [Customer, Supplier], async req => {
        return bupa.run(req.query);
    });

});
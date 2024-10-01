using { cap.demo.bp as bp } from '../db/schemas';

@path: 'service/bp'
service BussinessPartnerService {

    @readonly
    @cds.persistence:{table,skip:false}
    entity Customer as projection on bp.Customer;

    @readonly
    @cds.persistence:{table,skip:false}
    entity Supplier as projection on bp.Supplier;

}
annotate BussinessPartnerService with @(requires: 'odatauser');

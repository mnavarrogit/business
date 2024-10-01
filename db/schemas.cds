namespace cap.demo.bp;

using { OP_API_BUSINESS_PARTNER_SRV as bupa } from '../srv/external/OP_API_BUSINESS_PARTNER_SRV';

entity Customer as projection on bupa.A_Customer {
    key Customer as ID,
    CustomerFullName as fullName,
    CreationDate

}

entity Supplier as projection on bupa.A_Supplier {
    key Supplier as ID,
    SupplierFullName as fullName,
    CreationDate
}

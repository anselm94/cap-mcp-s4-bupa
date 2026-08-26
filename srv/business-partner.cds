using {OP_API_BUSINESS_PARTNER_SRV as S4BP} from './external/OP_API_BUSINESS_PARTNER_SRV';

@mcp
@path: '/mcp/customer'
/**
 * Retrieve Customer details and addresses from the S/4HANA system who are categorized as 'Person'
 */
service CustomerService {
    entity Customers         as
        projection on S4BP.A_BusinessPartner {
            BusinessPartner           as ID,
            PersonFullName            as name,
            LastChangeDate            as modifiedAt,
            LastChangeTime            as modifiedAtTime,

            /* Associations */
            to_BusinessPartnerAddress as address : redirected to CustomerAddresses,
        }
        where
            BusinessPartnerCategory == '1'; // '1' = Person;

    entity CustomerAddresses as
        projection on S4BP.A_BusinessPartnerAddress {
            key BusinessPartner as customerID,
                AddressID       as addressID,
                CityName        as city,
                Country         as country,
        };
}

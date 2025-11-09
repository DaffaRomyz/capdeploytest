using capdeploytest from '../db/schema';

service CatalogService {
    @odata.draft.enabled
    entity Books   as projection on capdeploytest.Books;

    @odata.draft.enabled
    entity Authors as projection on capdeploytest.Authors;

    @odata.draft.enabled
    entity Orders  as projection on capdeploytest.Orders;
}

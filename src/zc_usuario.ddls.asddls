@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Usuários'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_USUARIO provider contract transactional_query as projection on ZI_USUARIO
{
    key user_id,
    firstname,
    lastname,
    age,
    created_at,
    updated_at
}
where deleted_at is initial

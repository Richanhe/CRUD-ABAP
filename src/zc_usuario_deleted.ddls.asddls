@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Usuários deletados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_USUARIO_DELETED provider contract transactional_query as projection on ZI_USUARIO
{
    key user_id,
    firstname,
    lastname,
    age,
    created_at,
    updated_at,
    deleted_at
}
where deleted_at is not initial

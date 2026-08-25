@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Usuários'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_USUARIO as select from ztb_usuarios
    composition [0..*] of ZI_U_H as _Hobbies
{
    key user_id,
    firstname,
    lastname,
    age,
    
    @Semantics.systemDateTime.createdAt: true
    created_at,
    @Semantics.systemDateTime.lastChangedAt: true
    updated_at,
    
    deleted_at,
    
    _Hobbies
}

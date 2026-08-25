@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Usuários e hobbies'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_U_H as select from ztb_u_h
    association to parent ZI_USUARIO as _Usuario
        on $projection.user_id = _Usuario.user_id
    association [1..1] to ZI_HOBBY as _Hobby
        on $projection.hobby_id = _Hobby.hobby_id
{
    key user_id,
    key hobby_id,
    
    _Usuario,
    _Hobby
}

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hobbies'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_HOBBY as select from ztb_hobbies
    association [0..*] to ZI_U_H as _Usuarios
        on $projection.hobby_id = _Usuarios.hobby_id
{
    key hobby_id,
    name,
    
    _Usuarios
}

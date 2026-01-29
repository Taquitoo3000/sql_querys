use PRODHEG;

select
	e.Clave,
	pt.Descripcion,
	pf.*
  from Expediente as e
	left join Parte as p on e.Id=p.Expediente_Id
	inner join ParteTipo as pt on p.ParteTipo_Id=pt.Id
	inner join ParteFisica as pf on  p.Id=pf.Parte_Id

where
	e.Clave like '%/2026%'
	and (ParteTipo_Id =1 or ParteTipo_Id =6)

order by e.Clave

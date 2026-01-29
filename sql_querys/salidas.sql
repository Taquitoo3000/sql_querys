use PRODHEG;

select
	e.Clave,
	a.Fecha,
	a.Resumen
from Acuerdo as a
	inner join Expediente as e on e.Id=a.Expediente_Id

where
	year(e.Salida)=2026
	and e.ExpedienteTipo_Id = 3
	and (a.Resumen like '%no adm%'
		or a.Resumen like '%sobre%'
		or a.Resumen like '%acum%'
		or a.Resumen like '%sobre%'
		or a.Resumen like '%falta de mat%'
		or a.Resumen like '%incomp%')

order by e.Clave

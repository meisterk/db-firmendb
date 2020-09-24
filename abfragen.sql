--- die Vornamen aller Mitarbeiter der Firma "GBS"
select vorname
from mitarbeiter
    join firma on firma_id = firma.id
where firma.name = "GBS"

--- die Nachnamen aller Mitarbeiter im Team "DB"
select nachname
from mitarbeiter
    join mitarbeiter_team on mitarbeiter.id = mitarbeiter_id
    join team on team.id = team_id
where team.name = "DB"

--- die Firma, in der "Anna Arm" arbeitet
select name
from firma
    join mitarbeiter on firma.id = mitarbeiter.firma_id
where mitarbeiter.vorname = "Anna" AND mitarbeiter.nachname = "Arm"

--- die Namen aller Teams, in denen "Berta Bein" arbeitet
select name
from team
    join mitarbeiter_team on team.id = team_id
    join mitarbeiter on mitarbeiter.id = mitarbeiter_id
where mitarbeiter.vorname = "Berta" AND mitarbeiter.nachname = "Bein"
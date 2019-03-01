SELECT 
    Head_Coach AS 'Head Coach',  
    COUNT(*) AS 'Seasons (Since 2001)', 
    SUM(Wins_Reg) || '-' || 
    SUM(Losses_Reg) AS 'Reg. Season Record',
    SUM(Wins_Playoffs)  || '-' ||
    SUM(Losses_Playoffs) AS 'Playoff Record'
FROM season_records
WHERE Wins_Reg != 'NULL'
GROUP BY Head_Coach;
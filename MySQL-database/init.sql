CREATE TABLE IF NOT EXISTS News (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO News (title, content)
VALUES
('Fans rejoice over NBA team victory', "Fans worldwide celebrate following the victory of an NBA team."),
('New arena plans for NBA team', 'An NBA team announces plans for constructing a state-of-the-art basketball arena.'),
('NBA team organizes charity game', 'An NBA team hosts a charity basketball game to raise funds for worthy causes.'),
('Retirement of former NBA player', 'A retired NBA player, previously associated with the Los Angeles Lakers, announces retirement from professional basketball.'),
('Success of NBA team youth academy', "An NBA team's youth academy sees remarkable success with several players making it to the main team."),
('Record-breaking season for NBA team', 'An NBA team sets numerous records with their outstanding performance throughout the season.'),
('NBA player tests positive for COVID-19', 'An NBA player tests positive for COVID-19 and enters quarantine.'),
("Strategies for upcoming NBA season", "An NBA team reveals their strategies and plans for the upcoming basketball season."),
("Championship celebration parade for NBA team", "The city organizes a grand parade to celebrate the championship victory of an NBA team."),
('Novak Djokovic wins Wimbledon', 'In a captivating match, Novak Djokovic claims the Wimbledon title.'),
('Roger Federer announces retirement', 'In a surprising announcement, Roger Federer confirms his retirement from professional tennis.'),
('New talent emerges in tennis', 'The tennis world welcomes a promising new player who shows great potential.'),
("Stellar season for tennis star", 'A tennis star delivers an outstanding performance, achieving top rankings.'),
('Injury updates from the tennis circuit', 'Several notable players in the tennis world suffer injuries during recent tournaments.'),
("New coach for top tennis player", 'A top-ranked tennis player reveals their new coach for the upcoming season.'),
('Tennis player secures world number one ranking', 'After their latest victory, a tennis player claims the coveted world number one ranking.'),
('Sponsorship deal for tennis player', 'A prominent tennis player signs a lucrative sponsorship deal with a renowned brand.'),
("Tennis player's training updates", "Latest updates from a tennis player's pre-season training sessions."),
("Tennis player wins Grand Slam", "A talented tennis player clinches one of the prestigious Grand Slam titles."),
("Fans celebrate tennis player victory", "Fans worldwide celebrate the triumph of a tennis");
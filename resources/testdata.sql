--
-- File generated with SQLiteStudio v3.2.1 on Wed Aug 19 10:37:05 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: answers
CREATE TABLE answers (
    id    INTEGER PRIMARY KEY,
    title TEXT
);

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        1,
                        'These are the voyages'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        2,
                        'Data on friendship'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        3,
                        'Star Trek API'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        4,
                        'Maybe Riker'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        5,
                        'Maybe Data with Beard'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        6,
                        'Borg Hails'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        7,
                        'Data or Spock?'
                    );

INSERT INTO answers (
                        id,
                        title
                    )
                    VALUES (
                        8,
                        'Not Picard! Not anyone, in fact'
                    );


-- Table: blocks
CREATE TABLE blocks (
    id        INTEGER PRIMARY KEY,
    content   TEXT,
    answer_id INTEGER NOT NULL,
    FOREIGN KEY (
        answer_id
    )
    REFERENCES answers (id) 
);

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       1,
                       '[{"type": "text", "body": "These are the voyages of the Starship Enterprise"}, {"type": "text", "body": " Its continuing mission, to explore strange new worlds"}, {"type": "text", "body": " To seek out new life and new civilizations"}, {"type": "text", "body": " To boldly go where no one has gone before"}, {"type": "text", "body": "{\"hello world 😊"}]',
                       1
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       2,
                       '[{"type": "text", "body": "I never knew what a friend was until I met Geordi"}, {"type": "text", "body": " He spoke to me as though I were human"}, {"type": "text", "body": " He treated me no differently from anyone else"}, {"type": "text", "body": " He accepted me for what I am"}, {"type": "text", "body": " And that, I have learned, is friendship"}, {"type": "text", "body": ""}, {"type": "image", "url": "http://vignette.wikia.nocookie.net/memoryalpha/images/4/4f/Data%2C_2366.jpg/revision/latest?cb=20130529102644&path-prefix=en"}]',
                       2
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       3,
                       '[
   {
      "type":"text",
      "body":"Api call time!"
   },
   {
      "type":"http",
      "success":[
         {
            "type":"text",
            "body":"Made it so!"
         },
         {
            "type":"image",
            "url":"https://treknews.net/wp-content/uploads/2011/05/2.jpg",
            "alt-text":"picard thumbs up"
         }
      ],
      "failure":[
         {
            "type":"random",
            "body":[
               {
                  "type":"image",
                  "url":"https://d13ezvd6yrslxm.cloudfront.net/wp/wp-content/images/startrek-picard-facepalm-700x341.jpg",
                  "alt-text":"picard facepalm"
               },
               {
                  "type":"image",
                  "url":"https://www.everseradio.com/wp-content/uploads/2009/06/facepalm.png",
                  "alt-text":"picard full body double facepalm"
               }
            ]
         }
      ]
   }
]',
                       3
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       4,
                       '[{"type": "maybe", "chance": 0.5, "body": [{"type": "image", "url": "https://ca.startrek.com/sites/default/files/styles/content_full/public/images/2019-07/18ead4c77c3f40dabf9735432ac9d97a.jpg", "alt-text": "Riker with beard"}]}]',
                       4
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       5,
                       '[{"type": "text", "body": "Forbidden knowledge!"}, {"type": "maybe", "chance": 0.3, "body": [{"type": "image", "url": "https://vignette.wikia.nocookie.net/memoryalpha/images/7/7e/Data_wearing_a_beard.jpg/revision/latest?cb=20121212024612&path-prefix=en"}]}]',
                       5
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       6,
                       '[{"type": "random", "body": [{"type": "text", "body": "You will be assimilated. Resistance is futile."}, {"type": "text", "body": "We are the Borg. Lower your shields and surrender your ships. We will add your biological and technological distinctiveness to our own. Your culture will adapt to service us. Resistance is futile."}, {"type": "text", "body": "We are the Borg. Your biological and technological distinctiveness will be added to our own. Resistance is futile."}]}, {"type": "random", "body": [{"type": "image", "url": "https://vignette.wikia.nocookie.net/memoryalpha/images/4/48/Picard_dreams_his_assimilation.jpg/revision/latest?cb=20120317185405&path-prefix=en"}, {"type": "image", "url": "https://vignette.wikia.nocookie.net/memoryalpha/images/4/40/Hugh-Drone.jpg/revision/latest?cb=20141207193522&path-prefix=en", "alt-text": "Hugh"}]}]',
                       6
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       7,
                       '[{"type": "text", "body": "Data or Spock?"}, {"type": "text", "body": "<drum roll>"}, {"type": "http", "success": [{"type": "image", "url": "https://cdn1.thr.com/sites/default/files/imagecache/768x433/2018/02/star_trek_tv_spock_3_copy_-_h_2018.jpg", "alt-text": "Spock!"}], "failure": [{"type": "image", "url": "https://i.stack.imgur.com/JwRfI.png"}, {"type": "wait", "wait-time": 42}]}]',
                       7
                   );

INSERT INTO blocks (
                       id,
                       content,
                       answer_id
                   )
                   VALUES (
                       8,
                       '[]',
                       8
                   );


-- Table: messages
CREATE TABLE messages (
    id   INTEGER PRIMARY KEY,
    body TEXT
);

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         1,
                         'With the {74c695031a554c2ebfdb2ee123c8b4f6|something} link, the chain is forged. The {74c695031a554c2ebfdb2ee123c8b4f6|} speech censured, the {74c695031a554c2ebfdb2ee123c8b4f6|} thought forbidden, the {74c695031a554c2ebfdb2ee123c8b4f6|} freedom denied - chains us all irrevocably. '
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         2,
                         'Life''s true gift is the capacity to enjoy {6b0f3753e17d42598a6b2b8468e3c20f|SOMETHING}.'
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         3,
                         'Commander William T. {4b0f3753e17d42598a6b2b8468e3b19e|}: It''s just that our mental pathways have become accustomed to your sensory input patterns. Lt. Commander Data: Hm. I understand. I am also fond of you, Commander. And you as well, Counselor.'
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         4,
                         'It''s elementary, my dear {4b0f3753e17d42598a6b2b8468e3b19e|Watson}. Sir.'
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         5,
                         'Space... The final frontier. These are the voyages of the starship {f88845ecb8794308af2ecbb663ecf667|}. It''s continuing mission, to explore strange new worlds. To seek out new life and new civilizations. To boldly go where no one has gone before.'
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         6,
                         '{b8db1b3a29454bafbed460306e7f8318|some guy} and {9926d7be6bb44850bf34d1f7cc3c2018|another guy} at Tenagra!'
                     );

INSERT INTO messages (
                         id,
                         body
                     )
                     VALUES (
                         7,
                         'Let''s make sure that history never forgets the name... {f88845ecb8794308af2ecbb663ecf667|}'
                     );


-- Table: state
CREATE TABLE state (
    id    TEXT PRIMARY KEY,
    value TEXT
);

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      '74c695031a554c2ebfdb2ee123c8b4f6',
                      'first'
                  );

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      '4b0f3753e17d42598a6b2b8468e3b19e',
                      'Riker'
                  );

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      'f88845ecb8794308af2ecbb663ecf667',
                      'Enterprise'
                  );

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      'b8db1b3a29454bafbed460306e7f8318',
                      'Darmok'
                  );

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      'c9fdac3a29454bafbed460306e7f1111',
                      'Red Herring'
                  );

INSERT INTO state (
                      id,
                      value
                  )
                  VALUES (
                      '9926d7be6bb44850bf34d1f7cc3c2018',
                      'Jalad'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;


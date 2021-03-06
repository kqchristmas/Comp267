CREATE DATABASE Music;
SELECT Music;
USE Music ;
CREATE TABLE VENUE (
  VEN_NUM varchar(3),
  VEN_NAME  VARCHAR(25),
  CITY      VARCHAR(15),
  COUNTRY   VARCHAR(15),
  DATE      DATETIME,
  PRIMARY KEY(VEN_NUM)
);
INSERT INTO VENUE VALUES('001' 'Ziggo Dome',           'Amsterdam',  'Netherlands', '2017-01-28');
INSERT INTO VENUE VALUES('002' 'The O2 Arena',         'London',     'England',     '2017-02-04');
INSERT INTO VENUE VALUES('003' 'First Direct Arena',   'Leeds',      'England',     '2017-02-08'); 
INSERT INTO VENUE VALUES('004' 'Manchester Arena',     'Manchester', 'England',     '2017-02-11');
INSERT INTO VENUE VALUES('005' 'The O2 Arena',         'London',     'England',     '2017-02-14');
INSERT INTO VENUE VALUES('006' 'Sheffield Arena',      'Sheffield',  'England',     '2017-02-17');
INSERT INTO VENUE VALUES('007' '3Arena',               'Dublin',     'Ireland',     '2017-02-20');
INSERT INTO VENUE VALUES('008' 'Barclaycard Arena',    'Birmingham', 'England',     '2017-02-23');
INSERT INTO VENUE VALUES('009' 'Konig Pilsener Arena', 'Oberhausen', 'Germany',     '2017-02-25');
INSERT INTO VENUE VALUES('010' 'Ziggo Dome',           'Amsterdam',  'Netherlands', '2017-02-26');
INSERT INTO VENUE VALUES('011' 'Sportpaleis',          'Antwerp',    'Belgium',     '2017-03-01');
INSERT INTO VENUE VALUES('012' 'Ericsson Globe',       'Stockholm',  'Sweden',      '2017-03-04');
INSERT INTO VENUE VALUES('013' 'Telenor Arena',        'Oslo',       'Norway',      '2017-03-05');
INSERT INTO VENUE VALUES('014' 'Royal Arena',          'Copenhagen', 'Denmark',     '2017-03-07');
INSERT INTO VENUE VALUES('015' 'Mercedes Benz Area',   'Berlin',     'Germany',     '2017-03-09');
INSERT INTO VENUE VALUES('016' 'Barclaycard Arena',    'Hamburg',    'Germany',     '2017-03-10');
INSERT INTO VENUE VALUES('017' 'AccorHotels Arena',     'Paris',      'France',      '2017-03-14');
INSERT INTO VENUE VALUES('018' 'The O2 Arena',         'London',     'England',     '2017-03-20');


CREATE TABLE TICKET (
  BAR_CODE      VARCHAR(8),
  SECT_NUM      VARCHAR(3),   
  SEAT_NUM      VARCHAR(4),
  TICKET_PRICE  FLOAT(8),
  PRIMARY KEY(BAR_CODE),
  FOREIGN KEY(SEAT_NUM) REFERENCES TICKET(SEAT_NUM)
);
INSERT INTO TICKET VALUES('5722054', '100', '10',   '289.00');
INSERT INTO TICKET VALUES('2902686', '100', '102',  '274.00');
INSERT INTO TICKET VALUES('4404390', '101', '161',  '265.00');
INSERT INTO TICKET VALUES('6185857', '102', '303',  '229.00');
INSERT INTO TICKET VALUES('3682157', '103', '471',  '215.00');
INSERT INTO TICKET VALUES('6207165', '104', '650',  '201.00');
INSERT INTO TICKET VALUES('9014938', '105', '804',  '190.00');
INSERT INTO TICKET VALUES('1099749', '105', '887',  '165.00');
INSERT INTO TICKET VALUES('3583996', '106', '1015', '150.00');
INSERT INTO TICKET VALUES('8108340', '107', '1078', '150.00');
INSERT INTO TICKET VALUES('6440900', '108', '1239', '165.00');
INSERT INTO TICKET VALUES('4445207', '109', '1375', '190.00');
INSERT INTO TICKET VALUES('5383423', '110', '1506', '201.00');
INSERT INTO TICKET VALUES('6819344', '111', '1654', '215.00');
INSERT INTO TICKET VALUES('2927642', '112', '1899', '229.00');
INSERT INTO TICKET VALUES('8605756', '112', '2001', '219.00');
INSERT INTO TICKET VALUES('4161011', '200', '2210', '139.00');
INSERT INTO TICKET VALUES('9256559', '201', '2311', '125.00');
INSERT INTO TICKET VALUES('3819758', '202', '2413', '110.00');
INSERT INTO TICKET VALUES('3236648', '203', '2579', '99.00');
INSERT INTO TICKET VALUES('4266123', '204', '2814', '95.00');
INSERT INTO TICKET VALUES('3090218', '205', '2911', '85.00');
INSERT INTO TICKET VALUES('5954152', '206', '3013', '79.00');
INSERT INTO TICKET VALUES('2857086', '206', '3148', '59.00');
INSERT INTO TICKET VALUES('7828380', '207', '3173', '79.00');
INSERT INTO TICKET VALUES('6546997', '208', '3332', '85.00');
INSERT INTO TICKET VALUES('9532598', '209', '3471', '99.00');
INSERT INTO TICKET VALUES('6442509', '210', '3741', '99.00');
INSERT INTO TICKET VALUES('3560245', '211', '3760', '125.00');
INSERT INTO TICKET VALUES('2304814', '212', '4000', '139.00');


CREATE TABLE SEAT (
  SECT_NUM  VARCHAR(3),
  SEAT_NUM  VARCHAR(4),
  ROW_NUM   VARCHAR(3),
  PRIMARY KEY(SEAT_NUM)
  );
INSERT INTO SEAT VALUES('100', '10',   '001');
INSERT INTO SEAT VALUES('100', '102',  '007');
INSERT INTO SEAT VALUES('101', '161',  '011');
INSERT INTO SEAT VALUES('102', '303',  '021');
INSERT INTO SEAT VALUES('103', '471',  '032');
INSERT INTO SEAT VALUES('104', '650',  '044');
INSERT INTO SEAT VALUES('105', '804',  '054');
INSERT INTO SEAT VALUES('105', '887',  '060');
INSERT INTO SEAT VALUES('106', '1015', '068');
INSERT INTO SEAT VALUES('107', '1078', '072');
INSERT INTO SEAT VALUES('108', '1239', '083');
INSERT INTO SEAT VALUES('109', '1375', '092');
INSERT INTO SEAT VALUES('110', '1506', '101');
INSERT INTO SEAT VALUES('111', '1654', '111');
INSERT INTO SEAT VALUES('112', '1899', '127');
INSERT INTO SEAT VALUES('112', '2001', '134');
INSERT INTO SEAT VALUES('200', '2210', '148');
INSERT INTO SEAT VALUES('201', '2311', '155');
INSERT INTO SEAT VALUES('202', '2413', '161');
INSERT INTO SEAT VALUES('203', '2579', '172');
INSERT INTO SEAT VALUES('204', '2814', '188');
INSERT INTO SEAT VALUES('205', '2911', '195');
INSERT INTO SEAT VALUES('206', '3013', '201');
INSERT INTO SEAT VALUES('206', '3148', '210');
INSERT INTO SEAT VALUES('207', '3173', '212');
INSERT INTO SEAT VALUES('208', '3332', '223');
INSERT INTO SEAT VALUES('209', '3471', '232');
INSERT INTO SEAT VALUES('210', '3741', '250');
INSERT INTO SEAT VALUES('211', '3760', '251');
INSERT INTO SEAT VALUES('212', '4000', '267');

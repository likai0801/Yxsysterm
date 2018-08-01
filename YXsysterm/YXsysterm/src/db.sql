/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     2018/7/31/周二 14:47:12                        */
/*==============================================================*/


alter table EMAIL
   drop constraint FK_EMAIL_REFERENCE_USERS;

alter table EMAIL
   drop constraint FK_EMAIL_REFERENCE_ACCESSOR;

alter table LINKMAN
   drop constraint FK_LINKMAN1_REFERENCE_CUSTOMER;

alter table ORDERDETAILS
   drop constraint FK_ORDERDET_REFERENCE_ORDERS;

alter table PLAN
   drop constraint FK_PLAN_REFERENCE_CHANCE;

alter table ROLE_CON_RIGHT
   drop constraint FK_ROLE_CON_REFERENCE_ROLES;

alter table ROLE_CON_RIGHT
   drop constraint FK_ROLE_CON_REFERENCE_RIGHTS;

alter table SHAREDOC
   drop constraint FK_SHAREDOC_REFERENCE_DATADIC;

alter table USERS
   drop constraint FK_USERS_REFERENCE_ROLES;

alter table USERTETAILS
   drop constraint FK_USERTETA_REFERENCE1_DATADIC;

alter table USERTETAILS
   drop constraint FK_USERTETA_REFERENCE_USERS;

alter table USERTETAILS
   drop constraint FK_USERTETA_REFERENCE_DATADIC;

drop table ACCESSORY cascade constraints;

drop table CHANCE cascade constraints;

drop table CUSTOMER cascade constraints;

drop table DATADIC cascade constraints;

drop table EMAIL cascade constraints;

drop table LINKMAN cascade constraints;

drop table LOG cascade constraints;

drop table OPERATELOG cascade constraints;

drop table OPI cascade constraints;

drop table ORDERDETAILS cascade constraints;

drop table ORDERS cascade constraints;

drop table PERTARGET cascade constraints;

drop table PLAN cascade constraints;

drop table RIGHTS cascade constraints;

drop table ROLES cascade constraints;

drop table ROLE_CON_RIGHT cascade constraints;

drop table SERVICE cascade constraints;

drop table SHAREDOC cascade constraints;

drop table USERS cascade constraints;

drop table USERTETAILS cascade constraints;

/*==============================================================*/
/* Table: ACCESSORY                                             */
/*==============================================================*/
create table ACCESSORY  (
   ID                   VARCHAR2(50 CHAR)               not null,
   PATH                 VARCHAR2(50 CHAR),
   constraint PK_ACCESSORY primary key (ID)
);

/*==============================================================*/
/* Table: CHANCE                                                */
/*==============================================================*/
create table CHANCE  (
   ID                   VARCHAR2(50 CHAR)               not null,
   CNAME                VARCHAR2(50 CHAR),
   SUMMARY              VARCHAR2(150 CHAR),
   CONTACTS             VARCHAR2(50 CHAR),
   DES                  VARCHAR2(500 CHAR),
   FOUNDER              VARCHAR2(50 CHAR),
   ASSIGN               VARCHAR2(50 CHAR),
   SOURCE               VARCHAR2(50 CHAR),
   ODDS                 NUMBER(3),
   TEL                  VARCHAR2(50 CHAR),
   CTIME                VARCHAR2(50 CHAR),
   ATIME                VARCHAR2(50 CHAR),
   CH_STATUS            VARCHAR2(50 CHAR),
   constraint PK_CHANCE primary key (ID)
);

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER  (
   ID                   VARCHAR2(50 CHAR)               not null,
   NAME                 VARCHAR2(50 CHAR),
   MANAGER              VARCHAR2(50 CHAR),
   AREA                 VARCHAR2(50 CHAR),
   DEGREE               VARCHAR2(50 CHAR),
   SATISFCING           VARCHAR2(50 CHAR),
   ADDR                 VARCHAR2(50 CHAR),
   TEL                  VARCHAR2(50 CHAR),
   URL                  VARCHAR2(50 CHAR),
   PERMITNUMBER         VARCHAR2(50 CHAR),
   MONEY                NUMBER,
   BANK                 VARCHAR2(50 CHAR),
   LANDTAX              VARCHAR2(50 CHAR),
   CREDIT               VARCHAR2(50 CHAR),
   POSTCODE             VARCHAR2(50 CHAR),
   FAX                  VARCHAR2(50 CHAR),
   LEGALPERSON          VARCHAR2(50 CHAR),
   ANNUALSALSE          NUMBER,
   BANKNUMBER           VARCHAR2(50 CHAR),
   NATIOANALTAX         VARCHAR2(50 CHAR),
   CUS_STATUS           VARCHAR2(50 CHAR),
   constraint PK_CUSTOMER primary key (ID)
);

/*==============================================================*/
/* Table: DATADIC                                               */
/*==============================================================*/
create table DATADIC  (
   ID                   VARCHAR2(50 CHAR)               not null,
   TYPE                 VARCHAR2(50 CHAR),
   CASES                VARCHAR2(50 CHAR),
   VALUE                VARCHAR2(50 CHAR),
   EDITWON              VARCHAR2(2  CHAR),
   constraint PK_DATADIC primary key (ID)
);

/*==============================================================*/
/* Table: EMAIL                                                 */
/*==============================================================*/
create table EMAIL  (
   ID                   VARCHAR2(50 CHAR)               not null,
   USERID               VARCHAR2(50 CHAR),
   TITLE                VARCHAR2(50 CHAR),
   CONTENT              VARCHAR2(500 CHAR),
   ACC_ID               VARCHAR2(500 CHAR),
   RECIPIENT            VARCHAR2(500 CHAR),
   ADDRESSER            VARCHAR2(50 CHAR),
   SENDTIME             VARCHAR2(50 CHAR),
   RECEIVETIME          VARCHAR2(50 CHAR),
   POSITION             NUMBER(1),
   MARKREAD             NUMBER(1),
   constraint PK_EMAIL primary key (ID)
);

/*==============================================================*/
/* Table: LINKMAN                                               */
/*==============================================================*/
create table LINKMAN  (
   ID                   VARCHAR2(50 CHAR)               not null,
   CUSTOMER_ID          VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   SEX                  VARCHAR2(50 CHAR),
   POSITION             VARCHAR2(50 CHAR),
   TEL                  VARCHAR2(50 CHAR),
   PHONE                VARCHAR2(50 CHAR),
   REMARK               VARCHAR2(50 CHAR),
   constraint PK_LINKMAN primary key (ID)
);

/*==============================================================*/
/* Table: LOG                                                   */
/*==============================================================*/
create table LOG  (
   ID                   VARCHAR2(50 CHAR)               not null,
   USERNAM              VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   LOGINTIME            VARCHAR2(50 CHAR),
   constraint PK_LOG primary key (ID)
);

/*==============================================================*/
/* Table: OPERATELOG                                            */
/*==============================================================*/
create table OPERATELOG  (
   ID                   VARCHAR2(50 CHAR)               not null,
   USERNAME             VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   TIME                 VARCHAR2(50 CHAR),
   LEVEL1               VARCHAR2(50 CHAR),
   LEVEL2               VARCHAR2(50 CHAR),
   ACTION               VARCHAR2(50 CHAR),
   constraint PK_OPERATELOG primary key (ID)
);

/*==============================================================*/
/* Table: OPI                                                   */
/*==============================================================*/
create table OPI  (
   ID                   VARCHAR2(50 CHAR)               not null,
   PRONAME              VARCHAR2(50 CHAR),
   PROMODEL             VARCHAR2(50 CHAR),
   PROGRADE             VARCHAR2(50 CHAR),
   PROBATCH             VARCHAR2(50 CHAR),
   UNIT                 VARCHAR2(10 CHAR),
   PRICE                NUMBER,
   NUM                  INTEGER,
   DEPOT                VARCHAR2(50 CHAR),
   STALL                VARCHAR2(50 CHAR),
   COAF                 VARCHAR2(50 CHAR),
   constraint PK_OPI primary key (ID)
);

/*==============================================================*/
/* Table: ORDERDETAILS                                          */
/*==============================================================*/
create table ORDERDETAILS  (
   ID                   VARCHAR2(50 CHAR)               not null,
   ORDER_ID             VARCHAR2(50 CHAR),
   GOODS                VARCHAR2(50 CHAR),
   COUNT                INTEGER,
   UNIT                 VARCHAR2(10 CHAR),
   PRICE                NUMBER,
   MONEY                NUMBER,
   constraint PK_ORDERDETAILS primary key (ID)
);

/*==============================================================*/
/* Table: ORDERS                                                */
/*==============================================================*/
create table ORDERS  (
   ID                   VARCHAR2(50 CHAR)               not null,
   CNAME                VARCHAR2(50 CHAR),
   ADDR                 VARCHAR2(50 CHAR),
   ORDER_STATUS         VARCHAR2(50 CHAR),
   CDATE                VARCHAR2(50 CHAR),
   TEL                  VARCHAR2(50 CHAR),
   MONEY                NUMBER,
   SETMONEY             NUMBER,
   constraint PK_ORDERS primary key (ID)
);

/*==============================================================*/
/* Table: PERTARGET                                             */
/*==============================================================*/
create table PERTARGET  (
   ID                   VARCHAR2(50 CHAR)               not null,
   TITEL                VARCHAR2(50 CHAR),
   TYPE                 VARCHAR2(50 CHAR),
   BTIME                VARCHAR2(50 CHAR),
   ETIME                VARCHAR2(50 CHAR),
   ENAME                VARCHAR2(50 CHAR),
   AMOUNT               NUMBER,
   COMPLETED_CUS        NUMBER,
   MONEY                NUMBER,
   COMPLETED_SALES      NUMBER,
   AN_STATUS            NUMBER(1),
   constraint PK_PERTARGET primary key (ID)
);

/*==============================================================*/
/* Table: PLAN                                                  */
/*==============================================================*/
create table PLAN  (
   ID                   VARCHAR2(50 CHAR)               not null,
   CHANCE_ID            VARCHAR2(50 CHAR),
   PDATE                VARCHAR2(50 CHAR),
   PROJECTS             VARCHAR2(150 CHAR),
   RESULT               VARCHAR2(150 CHAR),
   PL_STATUS            VARCHAR2(50 CHAR),
   constraint PK_PLAN primary key (ID)
);

/*==============================================================*/
/* Table: RIGHTS                                                */
/*==============================================================*/
create table RIGHTS  (
   ID                   VARCHAR2(50 CHAR)               not null,
   UPRIGHT              VARCHAR2(50 CHAR),
   RIGHT                VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   CONTENT              VARCHAR2(50 CHAR),
   constraint PK_RIGHTS primary key (ID)
);

/*==============================================================*/
/* Table: ROLES                                                 */
/*==============================================================*/
create table ROLES  (
   ID                   VARCHAR2(50 CHAR)               not null,
   ROLENAME             VARCHAR2(50 CHAR),
   REGISTTIME           VARCHAR2(50 CHAR),
   ROLEDES              VARCHAR2(200 CHAR),
   ROLE_STATUS          NUMBER(1),
   constraint PK_ROLES primary key (ID)
);

/*==============================================================*/
/* Table: ROLE_CON_RIGHT                                        */
/*==============================================================*/
create table ROLE_CON_RIGHT  (
   ID                   VARCHAR2(50 CHAR)               not null,
   ROLE_ID              VARCHAR2(50 CHAR),
   RIGHT_ID             VARCHAR2(50 CHAR),
   constraint PK_ROLE_CON_RIGHT primary key (ID)
);

/*==============================================================*/
/* Table: SERVICE                                               */
/*==============================================================*/
create table SERVICE  (
   ID                   VARCHAR2(50 CHAR)               not null,
   CNAME                VARCHAR2(50 CHAR),
   SUMMARY              VARCHAR2(150 CHAR),
   REQUEST              VARCHAR2(500 CHAR),
   CREATOR              VARCHAR2(50 CHAR),
   ASSIGN               VARCHAR2(50 CHAR),
   TYPE                 VARCHAR2(50 CHAR),
   SE_STATUS            VARCHAR2(50 CHAR),
   CTIME                VARCHAR2(50 CHAR),
   ATIME                VARCHAR2(50 CHAR),
   DISCONTENT           VARCHAR2(50 CHAR),
   DISTIME              VARCHAR2(50 CHAR),
   DISPOSTOR            VARCHAR2(50 CHAR),
   RESULT               VARCHAR2(50 CHAR),
   SATISFICING          NUMBER(1),
   constraint PK_SERVICE primary key (ID)
);

/*==============================================================*/
/* Table: SHAREDOC                                              */
/*==============================================================*/
create table SHAREDOC  (
   ID                   VARCHAR2(50 CHAR)               not null,
   TYPE                 VARCHAR2(50 CHAR),
   TITLE                VARCHAR2(50 CHAR),
   TIME                 VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   constraint PK_SHAREDOC primary key (ID)
);

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS  (
   ID                   VARCHAR2(50 CHAR)               not null,
   LOGINTIME            VARCHAR2(50 CHAR),
   USERNAME             VARCHAR2(50 CHAR),
   NAME                 VARCHAR2(50 CHAR),
   PASSWORD             VARCHAR2(50 CHAR),
   ROLE_ID              VARCHAR2(50 CHAR),
   USER_STATUS          VARCHAR2(50 CHAR),
   constraint PK_USERS primary key (ID)
);

/*==============================================================*/
/* Table: USERTETAILS                                           */
/*==============================================================*/
create table USERTETAILS  (
   ID                   VARCHAR2(50 CHAR)               not null,
   USERS_ID             VARCHAR2(50 CHAR),
   JOB                  VARCHAR2(50 CHAR),
   DEPART               VARCHAR2(50 CHAR),
   REGDATE              VARCHAR2(50 CHAR),
   TEL                  VARCHAR2(50 CHAR),
   SEX                  VARCHAR2(10 CHAR),
   constraint PK_USERTETAILS primary key (ID)
);

alter table EMAIL
   add constraint FK_EMAIL_REFERENCE_USERS foreign key (USERID)
      references USERS (ID);

alter table EMAIL
   add constraint FK_EMAIL_REFERENCE_ACCESSOR foreign key (ACC_ID)
      references ACCESSORY (ID)
      on delete cascade;

alter table LINKMAN
   add constraint FK_LINKMAN1_REFERENCE_CUSTOMER foreign key (CUSTOMER_ID)
      references CUSTOMER (ID)
      on delete cascade;

alter table ORDERDETAILS
   add constraint FK_ORDERDET_REFERENCE_ORDERS foreign key (ORDER_ID)
      references ORDERS (ID);

alter table PLAN
   add constraint FK_PLAN_REFERENCE_CHANCE foreign key (CHANCE_ID)
      references CHANCE (ID);

alter table ROLE_CON_RIGHT
   add constraint FK_ROLE_CON_REFERENCE_ROLES foreign key (ROLE_ID)
      references ROLES (ID)
      on delete cascade;

alter table ROLE_CON_RIGHT
   add constraint FK_ROLE_CON_REFERENCE_RIGHTS foreign key (RIGHT_ID)
      references RIGHTS (ID)
      on delete cascade;

alter table SHAREDOC
   add constraint FK_SHAREDOC_REFERENCE_DATADIC foreign key (TYPE)
      references DATADIC (ID);

alter table USERS
   add constraint FK_USERS_REFERENCE_ROLES foreign key (ROLE_ID)
      references ROLES (ID);

alter table USERTETAILS
   add constraint FK_USERTETA_REFERENCE1_DATADIC foreign key (DEPART)
      references DATADIC (ID);

alter table USERTETAILS
   add constraint FK_USERTETA_REFERENCE_USERS foreign key (USERS_ID)
      references USERS (ID)
      on delete cascade;

alter table USERTETAILS
   add constraint FK_USERTETA_REFERENCE_DATADIC foreign key (JOB)
      references DATADIC (ID);


# Zanryu
===


## Introduction

To stay at a university is called as **Zanryu** in SFC.  
This script enable you to submit an online report for **Zanryu** easily.


## How to use

You need to configure first, and you can run the script.

### Configuration

Please fill out 'config.yml' by following the tables below.

#### Parameter descriptions

| parameter | description |
|:---:|:---|
| sfs_url | sfs url. Leave it default. |
| stay_url | stay page url. Leave it default. |
| ks | Access to your class page on SFC-SFS and find 'ks-XXXXX&yc-XXXXX' in URL. |
| yc | Access to your class page on SFC-SFS and find 'ks-XXXXX&yc-XXXXX' in URL. |
| cns_account | Your cns accont |
| cns_password | Your cns password |
| my_phone_num | Your phone number |
| emergency_phone_num | Emergency phone number |
| estimated_time_to_stay | The time which you are expected to be in a lab. |
| building | The bulding in which you stay. You need to specify this with a number. See 'Building options'. |
| floor | Floor name. This depends on the building in which you stay. See 'Floor options'. |
| room | Room number |
| reasen | The reasen for staying. Japanese is also available. |

#### Building options

| building | number |
|:---:|:---|
| Kappa | 1 |
| Epsilon | 2 |
| Iota | 3 |
| Omicron | 4 |
| Lambda | 5 |
| Delta | 6 |
| Tau | 7 |
| Zeta | 8 |
| Ny | 9 |
| Omega | 10 |
| Others | 11 |

#### Floor options

| building | floor options |
|:---:|:---|
| Kappa | 1,2,3,4,5 |
| Epsilon | 1,2,3,4,5 |
| Iota | 1,2,3,4,5 |
| Omicron | 1,2,3,4,5 |
| Lambda | 1,2,3,4,5 |
| Delta | n1,n2,s1,s2 |
| Tau | 1,2,3 |
| Zeta | 1,2,3 |
| Ny | 1,2,3,4,5 |
| Omega | 1,2 |
| Others | 1 |

### Run script

```
ruby zanryu.rb
```


## Note
It is possible to submit the report between 18:00 ~ 03:00.

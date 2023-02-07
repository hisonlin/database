# Group DB - Car Rental
## Relations Table

||customer|membership|car|maintainance|branch|staff|rental_rate|promotion|payment|insurance|feedback|order|
|--|--|--|--|--|--|--|--|--|--|--|--|--|
|customer||1:0-1|||||||1:1-N|1:0-N|1:0-N|1:1-N|
|membership||||||||||||1:1-N|
|car||||1:0-N||||||1:0-N||1:0-N|
|maintainance|||||||||||||
|branch||||||1:N||||||N:1-N|
|staff||||||||||||1:0-N|
|rental_rate|||1:1-N||||||||||
|promotion||||||||||||1:0-N|
|payment||||||||||||1:1|
|insurance||||||||||||1:1|
|feedback||||||||||||1:1|
|order|||||||||||||


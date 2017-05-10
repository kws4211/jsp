<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="/bloSSOME2/bloMain/css/asdie.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<!-- 개인 프로필사진 올리는곳 -->
					<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSExIVFRUVFxcYFRcVFRUVFRUVFRcWFxUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lHyUtLS0tLS0tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAACAAEDBQYEBwj/xABDEAABAwEEBQoDBQYFBQAAAAABAAIRAwQhMUEFElFhcQYTIjKBkaGxwfAjQtEHcnOy4RQzUmKC8RY0kqLCFRdjdMP/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBQQG/8QAMREAAgECBAQEBQMFAAAAAAAAAAECAxEhMUFxBBIysVFhgcETIiMz8EKR0QUUJGLC/9oADAMBAAIRAxEAPwAFW6Rt0dBnWzOxFpG2R0G9Y+AVZSY5zubpiXHrO2LalNJXeR5WhQlJ5Y6fyNSouc7m6d7j1nbFbWy10bBTydVcLhnO0prfbqdgpQIdWd4HaV57a7S6o8vedZx2rKq1XVd9DfoUVTjbXVh6S0hUrvL3mT4AblA1sCe5MGiL0cXSqy8GJxKNvRG9M0XJ2g45IAZrs0iMwCj1hsnYEi4nduyQADLzmpgwRGJQ6xiLoU9kpk3RkUhg0Kc3dx3oGskxM8FcWDR5fBwAxuxRW2y6sgDbhsGPeblCUrF8KdytdRGBOeWwYhdFOiADDTEZ8cZ4eajs9ImXcI7cfJd1Wu4CMpjsjDyS5yXwzgq2ZroDTG3jnem/YC2SDcBlj4G5T830txjxn32rup0s98I5g+GVtm0hVokZ615aTdH1wWm0fpynUud0DlJuPA96ratka+83OF3fmOKqrVZi0kC4DImD4q+nxE4ZZHHxHA0qvUsfFG8BSKxmjtPPpQ1zS5u35gNgyK1tntLajQ5puIkLUpVo1Fhmed4nhJ0Hjl4iqNuWUtZuPErV1TceCyVoN3eiXUWcN0v0MxbBBKPRA+J/S/8AKR6obcekUehuufuO9Fmam++lnsnJz/K0PwqZ72g+qsnm4cR5qu5Pf5ah+DT/ACNVg8i6do8wtea+i9vY87Tf+Qn/ALe4xThMUQUjnBzQvKJR1UhsYxrSBAyEzHbmoLUemeHlClYo646ZPv3ciX2/27ig7yvv2YQSQU3QIPvYklcLGQcHTAvqPVy+pTsFDXdfUdgM5T6HsraNN1qr3XSJ8AFg+UOlnWmqXnD5RkAsyvV+I7LJHoOGo/DV3mzkt1sdWqGo84lQA3pmo2GJVJ1hUwBikWzeLhvTat0osRGEIATgIgYpC8xsSZAE55JpnFIBEbEYAzN6bVGZTMGcYJAT06IN+HFWFgsus7Vad5JyAxO9cVmJcI3jyK02jLPqt/mfEnYJgep7FCTsX0o3LChS1WwLroHE+57Vw6TpdEtGLiGj09SrDnLp3/29ErNR13A5NE9piO6AqWztUSvp2ABjRF3oMJ/0/wC5M+wYcCe0tWhFmkcLvfh3qOtRkgDMwo3J2Rnf2S7vHkQjFOD94Af1N9wrS02XVlu76j1XHEx7vUlIi4HI8Y7RjvGY9UDqYI271O84nv8AX3uUBu4ehUkyuUSj0iQLiBG29d/JW23mlO9uNxzHveotL0iQSMrjduuPvYqOy1yx4cJDgZ+q6KVTkkpHBxNFVIODPSXvlp2wsnaOr3q+sVr5ymHbW+nmqK1dQdq0+bmd0YVKm4XT8TMW7rFSaH67vuO82oNI9YqTQ5hz/wAN3i5oWdqbeh7LoRvwKI/8VP8AKF21BhxHmFy6JHwaX4bPyhdNb33ral9v0PMRf1b+fuEcexG1CcfexO1BWCUFU3I0FTBAMBiCt1jxHqjpqOsemUS6PVBDV+QDqU3ykpWpKNgUjCcu9Oc68UKZ+Gy4xmVk4hGATJJQgLGPVITUk5T8c0DBToi3ABOxuKABbeUerF1yQfGA/RNEpAIQCiS4iU+exAHfo9vmAOJu98FoKb77sBcOAEDwlUViMAbr/C7zXYy04+7zM+q5pvE7aKwLC12jogbfX9Fb6KqDU1jmfCFkHVS+oG7PM3fVaC1vLKTWjF0AbzOHaqmzrii+sNaQDtM9gOr/AMHHtXFYK+tVpjie7W/RdjbNzVn3tpudP9Oq36rg5GUy95cflbd24+qB6HfyjZqljuIPmPFp71mHVoJGwz4/Regab0YalJwGMS3iLx4hea6ROqQ8C7MeY7MO5N4MjF3R01X3neJC4KlX3wRC0S0HZ79FzWu4nvUosrmg3ODrj8zY7cQfJZ+qCHHDH+676la8dv1HkuHSo6esMHAHvxV0TlmaTkxVmk9pN7CbtgcP7qC1D4QO8qv5NWgio8fxMI+isbSfgdq0KMvlMitC1R+ZmNIdZPo03v8Awz+dibSPWTWE/vPwz+di5tTu0PbtHj4bPuN/KF0VDeMMscLzmobJ1G8B5KVxv97Qtyp0Hl6T+pcN2KJpQlEEiAIxQ1UQQ1UgZHTUVXrn3kpqahqdd3H0CJdK3CGT2DCSYJIFc8aARaqcFM7isQ9WPAwzTap7EgnxKBjMwRJ3NSOxAhBlyIxgmcZuGSRbGKAEQlCfm9icA5pATsqXXcPREa13j78VBEAcVHVdfA3e/FcsleR303aKLnk5R16mscB798Vo7MW1LWM20rhvfF/df2wouSvJGrUp62sGTmVYM5E1qZJbUDt94lRcS6My80zVBs1aMSwi7ZGS5eQTPhF8dc3fdECOEyhZZX6ppvzuVxoTRho0GsF+rPiSUlmN2sWlau3VvXnHKezsD3EOBY4yQLy1xzjYc1rLRYDUMOcQEP8AhSzOHScSdxMDuUniRTtkeSitqEtOGSVStLQd0dy2fKbkU0NL6DtbtlYN1NzSWOEFFgbI3lDbL6bTsu7CkTjw8kMywj3tVqOaWqJtAN+I7cw+Y9JVraP3PaufkzTuquj5Yv7f0U1pPwhxWhRXymVXd6lvzQzmkeshseFX8M/nYmtx6RR2MdCr91o73T6LmOxHuFDAcAiqOvHH1Q0cEVTEcVvVOn9u55SljL9+zJ3tThM5OogA1DURhBVSEwKSif1jx9ApqShd1jxPoiXStxRyf5qgoSSSQI8bJ3JjgihOsU9YCxqkL0ATgIBhNGKYCUiU4KBDtuRayihGEhjh8Snae1DO5NKQEzsArDQOjucqAkXSCeAXC89XgvTPsz0OHBz3DCB4T6rleLNCGEUQWrS1pJ5iyUzqsgPqasgHOAbiuCxWnTIdfTNQa3ztpNbAO1oa4XceC9XraJ1hDeiuH/Dr56VUkbBcpJW0G8dSk0e59UBz6ZpvBhzXYg7iLnDetbSssMwyUNn0e1pACuWs6KFEUmYDlJRrN/d6us7AuJDW7XGLzw3rJV+Rtqqv1jbGOBi57nnVgfK0QBfsAXsFWyteIcJC4hybokyAR90kISayG2ngzz7R/J+22cjUqtrsuDmvLu2HGbsbjcpeUfJYVWaxZqvAxGP6r0qlo1jBd4mT3rlttMQUpRGpWPmi1USxxacRIKGysm7etV9oWjhSrh7cHyTxBv8ANZ7RlOagG8fVNP5SEo/Md+jmagI/iDvAA+qjtH7scV1NqB+sW4MJHbEHzK47Weh2rQoJqnj4GPxDTq4eP8GctZ6R4qfRwufvNMeJ+i5q5v7V2aIEyNr6Xm9UrM6ngj2qkFKG3pUAjqm8Lbqv5fVdzy9BY38n2YcpijIQOQhMAIKqIIHpEWJmBUDNu8qduBXPS+qJZLf2FF57e6JJSSSSA8dcL0QCaURGCxz1QLGYpNCQTuQAoSJvSi5M0JAKb04cmASSGOU8X4JkIJSGdFZuGy4e+5e1cg64NBrx84Bd95oDHeLV4m10t4Eea9K+zLSE06lLOm7WF+IfM3biPFc7VmzshK6R6xTqgBDaLe1ovWeqaRhVtttxd0QcUOZbyXNdZK4eA+IBNxOasC8RC82t1ttTGMbTDdVuOsCZGy4iDvvR/wCJ3kasODowg48UuewOmbOvXc0FzYMZfRRWTSrXXhZDR1e1uJ1ngtP8savC8k9qktOvRMiYzz7UuZ5j5Ubn9qBCqtJ2i5VVk0nrDFKvV1ipc9xNWMH9obZ1Sd/fd9FhA6DLcYF2c4Lf8vXAlgJukk7gBKxFhAdWEYawI7x6opq7sV1ZcsW/BFvZLEaVmh3WMk8ScFVW13QWp0sPhn37xWTtp6K13FRTS8Dz1Go52k9WZ6qrHQQ6Q31aPm76qtqK10B1mb69L8zfquOPUac+lntFNE/EcR6pmIX9YX7/AAK2qmXqu55qln6Pszo1riheUwwKRKCu4AUbzejlRVCkRYTcCuejgeJXTSXLQwPEpvJbiWu3uiYJJgkkB49CcJSnCxj1YphNJTuvKaEgGCKdiYJgEAO1IlJKUhjwkEIKJo3pDDpiZWi5H2/mbVTceq/4bv64j/cGnvWZD71YUbxxVNRY3Oii8OU9gtLL1U2u2soHXq3N2nAI9AaU5+iHE9NvReN4wd2i/v2Kx5tr+i4AztC59TrTwK+jyspVm/BpuqgXSGujGMIUlK2PME2R05dB3iFLYtGMsxJp0wA4yQCRfwwVqzSou6Lu8fRXqN9SyMG18qT9StfpS1sGsLK3V6N7iGmHYXC9U9blZVqVDR/ZHOdeCabg4CDEmYAwWntNc1OjqGN52blLZ7Mxjei0DgESS8SEo8udr+RU6OokY3HYu0ugEp3tAM7VU6Yt4YwmYgFUXsReJ579oVv5yuKYNzRf2n9Fycl7MXVgcmiT33ePkq+1VC+o6o7F5uGcYAcYhbLk9YObpgnrOgld/CUueS8EZf8AUeIVKk/F4Il02fhnsWPt/VK1+m/3fasfpI9Bd8/1bGVwuUdygqK35PDp0v8A2Kfg6mqiornk0PiUfx2+dNcUOpGrU6GeysULz028D6fVSMyTDrgbj6LaqZY+Xc8zTvfDwfZkpPmmcnegcgrBlRvxRqOob0hMJpie3yXPQw4n0Clm49vkoqRuUnkiMdfzVEoKSaUlEZ5EAmOCdyRKxj1gJTlLNOTfcgB3MhCE7buKGSbkhjB2adMYwSAURjYpAwU5SlIY04KehaC07RmPeahn9E7ShgnY0mhdNGi/WGBuIycNh2HYf1C9J0Pa2Vmh7TIOG0HMHYQvFaTr+Ct+Ten32avrAyx7gKjThjGsNjh+iolT1R0xreJ7XVsZcLlw/wDR3Tj5rts2kNXHBdzdJt4qK5WXptHHZNGEYlHagGhHW0kMlTaQt+SUpRSCzZz6StgaCSYAWC05b3VmvcJFNoMTi8jOMmrUWlhfjeqTSNkim5u53cZKpi7snJWRmuTejjUfzjsBhvJwW1YLlU6Bdqt5pwhw7nDJw3RCuCvS8PBQhgeK46tKpVxy0KzTfU7Vj9KdRa7TXVHFZDSx6PaqpvqOzhV8sN/coaqu+Sw+LQ/HH/z+ipKmKv8AkqPi2f8AG8tU+i5KfWjSrfbex66xNrdLf6J6aH5h2+i2KmXqjzdLN7PsSuQPKJRuUilgyonqcKB6RFidggpHohEcENLqhEtBw6ZehIE6FJIDyPEpgkRCeFjHrBib0zSnCYjEpDEDKYvTNT6qQxoSKJxyCYHGUgEEwKSQuSGKL0eCEHNOECBjNJwEHemc8D9VYaF0HWtVTmqTT/M6OiwHNx9MSk8B2vgev2Al1Gm/N1NhPEtBK5qtpe0xd3K35gNaGjBoAHACAqu1svWdI0oeZF+1OOaYNTsap2U1BIsbIubXBpChIKuQ1ctrpSpogZRjA4AG57Oqcx+i7rHW1hBEObc4eo3Ka1WGDrAfruUTKYkOGyD9Fv8AB8QqkbPNflzyv9T4T4MrrpeXk/A4NNNkDisfpgQ3tWx0yLm8VjtMm7tRL9f54FnD9NP81ZRVMVoeSY+NZ/xHeX6LPVMVpeR7ZrWb7zz3B/0XPS+4tzur4UpbPseqsKYHpDtTtQDrjgfMLYqZLc81RzezJghciamcmVsAqF4vU8KCpikRYz8CmpdUJ39VNTFwRLQcOl+nuEkkEkAeRpAJ02SxT1oJuTIiUpzQAwd4Jm4pDNOwJDExidkk6oEyYAGJJwAVryX5OWi21uaoMmI13m5lNp+Zx8gLyveeRnIKzWAB4HO1zjVeLxuY35B47Sq5zURpHk2jPsp0jVbrubTpTg2o/p8S1oMdplaKl9ibtTp20CpPy0tZgHa4EnuXsY43nDLwTOGW1UOrIlY8rp/YxZ4h1qrEx8rabROZgg3bp7VN/wBtLBZWc5UFW0vkBgc7VaXG4N1GRIzMk4FemNEe7t6qrbT16smIp4D+Zwkk74I7yoOc3hcnCKbxM9onk5SpCWUKVKTPQYNb/WZPirSpSAHuf1XWSozeiNNIvKi0UrlTWmnetRaaFyqaljJOChKJZFlQKala1WBsBSbYiocrJcyONrUZoSu5lmhSCirFAg5FW6yTkqq1aMI6Tcc9hWrFFO2xF1wEqUW4Pmi7EKijOLjNXTPOtJ2Co+mXtYSGHpbRcb4zCwemMO1fRlDRbWtLduJCwHLf7OucaallgPmSw3Nd93IHwXXT4zm5lLUzP7ZQceR4I8VfitTyMZ8ezcah8Kv0VLpTRFagSK1MsIxBLdYCYkgGdWc8LxtC0PItnxrL92qfGuFfQxqLcOKdqMtn2PS2IGjp9ikYEFPr9i2J6HmoakqEhGAhckJgFQPxU6hehkGDV6qZmARPFyQwCJaeoR6X6e46dMnQM8hphMcUbWqOVinrhCM0icEzk8pAI7FbcluT1W22htnpXTe95wYwRrPO3EQMyQqo7V799k/J39lsnOvEVbRDzI6TKcfCYZ7XEbXRkoTlyq40ark5oOjZKLaFFsNEEm7We6+XvOZMKyEzMCEDXXbJ7d6Oo0gQ03965G74k0Ax8mdWN52JNaZmbtiVRwiHZ4xgkaN0NMXycFFYgFqqlsb513fxPeezWIHgArp7TBjGLsMdqqdG2bVptacQIPHNOKfMWwyZJqhDqBSliENVpMhcyUHMhdWqhc1KwzlNFRGj77/ou0sTanuBv+qEkFzhdZz74ShNlKstU96KlSJuH094lOyI81jioWAk7N6sGUA0QPVdVOhFwTuBGUqmWJVKTZzCgM0QpiLgpnB0iAMJJN9+weKLVM5QkokSttthY9pD2teDcQ5oII2EFYy38mrHRHOUqLWPYYZquIDS5xL2hutHzvui7sC9AtAgTB2XY353rNafYRScMYLQSTJMEQ64RJvV3DN/Gjuu5RxK+jPZ9jNALmou6fYumFDSHTP3R/yXpKmcd/ZnmqfTLb3RKkQnCJSKyFwUL1O9QPxQQkI4HgfokcBwHkEQHRPA+iDIcB5BN6eo10vde4oSTpKIrnkZKjOKSSxT1403oikkgDT/AGecmxbbYym792z4lUbWNI6P9Ti0HcSvouq6O4mN107hBjuTJLlrvElEmoOgX3wLzwzTtpidcf347kklz3u7EtBqFScW75nuRMAPTBv2pJJ03dJMbHFO7FRvp55570klY8MUJOzIiE2qkkpl4iExYkkgBtREyjKSSBN2QfMgYlThowuSSVHM3e5U22JzN6Z1J2tOtdddd25JJKxRTEHqXzembSjOe/NMknZARVoJ2xcb4EOGzM3eKz/KEHmyMekGnIXFuXgkkpcP9yO67lXE/als+xlSLly0R03cB6pJL0c847+zPMQ6Zbf9I6AiTJKRUA5c78UkkiMgvkdwKZ2ASSQ847P2JR+2917jJJJIIXP/2Q==" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle" align="center">
					<div class="profile-usertitle-name">
						닉네임 올리는곳
					</div>
					<div class="profile-usertitle-job">
						추가 정보?
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons" align="center">
					<button type="button" class="btn btn-success btn-sm">쪽지함</button>
					<button type="button" class="btn btn-danger btn-sm">로그아웃</button>
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							나의관심목록 </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-user"></i>
							정보수정 </a>
						</li>
						<li>
							<a href="#" target="_blank">
							<i class="glyphicon glyphicon-ok"></i>
							1:1문의 </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-flag"></i>
							도움말 </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
	</div>
</div>
</body>
</html>
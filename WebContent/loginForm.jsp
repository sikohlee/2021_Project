<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자가게</title>
	<link rel="icon" href="./images/logo-favicon.png">
	<link href="mainPage.css" rel="stylesheet">
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>

<!-- login/register style -->
<style type="text/css">

.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #ef1e1e, #ef1e1e 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #535d40, #535d40 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #000000, #000000 12.5%, #000000 12.5%, #000000 25%, #000000 25%, #000000 37.5%, #000000 37.5%, #000000 50%, #000000 50%, #000000 62.5%, #000000 62.5%, #000000 75%, #000000 75%, #000000 87.5%, #000000 87.5%, #000000);
  background-image: linear-gradient(to right, #000000, #000000 12.5%, #000000 12.5%, #000000 25%, #000000 25%, #000000 37.5%, #000000 37.5%, #000000 50%, #000000 50%, #000000 62.5%, #000000 62.5%, #000000 75%, #000000 75%, #000000 87.5%, #000000 87.5%, #000000);
}

</style>

<!-- login script -->
<script type="text/javascript">

$(function(){
    $('.button-checkbox').each(function(){
		var $widget = $(this),
			$button = $widget.find('button'),
			$checkbox = $widget.find('input:checkbox'),
			color = $button.data('color'),
			settings = {
					on: {
						icon: 'glyphicon glyphicon-check'
					},
					off: {
						icon: 'glyphicon glyphicon-unchecked'
					}
			};

		$button.on('click', function () {
			$checkbox.prop('checked', !$checkbox.is(':checked'));
			$checkbox.triggerHandler('change');
			updateDisplay();
		});

		$checkbox.on('change', function () {
			updateDisplay();
		});

		function updateDisplay() {
			var isChecked = $checkbox.is(':checked');
			// Set the button's state
			$button.data('state', (isChecked) ? "on" : "off");

			// Set the button's icon
			$button.find('.state-icon')
				.removeClass()
				.addClass('state-icon ' + settings[$button.data('state')].icon);

			// Update the button's color
			if (isChecked) {
				$button
					.removeClass('btn-default')
					.addClass('btn-' + color + ' active');
			}
			else
			{
				$button
					.removeClass('btn-' + color + ' active')
					.addClass('btn-default');
			}
		}
		function init() {
			updateDisplay();
			// Inject the icon if applicable
			if ($button.find('.state-icon').length == 0) {
				$button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
			}
		}
		init();
	});
});
</script>

</head>
<body>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<header>
	<div class="left">
			<input type="image" src="./images/flowerlogo.png" alt="로고" width="330px" height="100px" onclick="location.href='mainPage.jsp'">
	</div>
</header>
<section>
<div class="container">

<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" action="loginAction.jsp" method="get">
			<fieldset>
				<h2>로그인</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <input type="text" name="userID" class="form-control input-lg" placeholder="아이디">
				</div>
				<div class="form-group">
                    <input type="password" name="userPassword" class="form-control input-lg" placeholder="비밀번호">
				</div>
				<span class="button-checkbox">
					<button type="button" class="btn" data-color="info">아이디 저장</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
				</span>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6"><br/>
                        <input type="submit" class="btn btn-lg btn-danger btn-block" value="로그인">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
					<div align="center">아이디가 없으신가요?</div>
						<a href="register.jsp" class="btn btn-lg btn-primary btn-block">회원가입</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>
</section>

 <!-- Footer -->
  <br/><br/><br/><br/><br/><br/>
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">06223 서울특별시 강남구 역삼로25길 35(역삼동, 청오큐브타워) 청오디피케이㈜｜대표이사 : 오광현</p>
      <p class="m-0 text-center text-white">사업자 등록번호: 220-81-03371｜통신판매업신고: 강남 5064호｜개인정보 보호책임자 : 이명윤</p>
      <p class="m-0 text-center text-white">문의 : webmaster@dominos.co.kr</p>
      <p class="m-0 text-center text-white">Copyright ⓒ Domino’s Pizza. All rights reserved.</p>
      <p class="m-0 text-center text-white">청오디피케이㈜의 사전 서면동의 없이 도미노피자 사이트(PC, 모바일, 앱)의 일체의 정보, 콘텐츠 및 UI 등을 상업적 목적으로 전재, 전송, 스크래핑 등 무단 사용할 수 없습니다.</p>
    </div>
  </footer>
  
</body>
</html>


















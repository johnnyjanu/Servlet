<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

<%
//아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

int id = 0;
String search = request.getParameter("search");
if(search != null) {
	for(Map<String, Object> music:musicList) {
		if(search.equals(music.get("title"))) {
			id = (Integer)music.get("id");
		}
	}	
} else {
	id = Integer.parseInt(request.getParameter("id"));	
}

%>

<%! 
	public String timeCalculator(int time) {
		int hour;
		int minute;
		if(time >= 60) {
			hour = time / 60;
			minute = time % 60;
			return hour + " : " + minute;
		} else {
			return "0 : " + time;
		}
		
	}
%>

<div id="wrap">
	<form method="get" action="/jsp/test/test10/test10-Song.jsp">
	<header class="d-flex align-items-center">
		<a href="http://localhost:8080/jsp/test/test10/test10-IU.jsp" class="logo col-2 d-flex align-items-center h3 text-success text-decoration-none">Melong</a>
		<div class="searcher col-4 input-group">
			<input type="text" name="search" class="form-control" aria-describedby="button-addon2">
			<div class="input-group-append">
				<button type="submit" class="btn btn-info" id="button-addon2">검색</button>
			</div>
		</div>
	</header>
	</form>
	<nav class="d-flex align-items-center">
		<ul class="nav nav-fill col-5 font-weight-bold">
			<li class="nav-item"><a href="#" class="nav-link text-body">멜롱챠트</a></li>
			<li class="nav-item"><a href="#" class="nav-link text-body">최신음악</a></li>
			<li class="nav-item"><a href="#" class="nav-link text-body">장르음악</a></li>
			<li class="nav-item"><a href="#" class="nav-link text-body">멜롱DJ</a></li>
			<li class="nav-item"><a href="#" class="nav-link text-body">뮤직어워드</a></li>
		</ul>
	</nav>
	<section>
		<div class="song-info">
			<h4 class="font-weight-bold">곡 정보</h4>
			<% for(Map<String, Object> music:musicList) { 
					if(id == (Integer)music.get("id")) {
			%>
			<div class="infoArea border border-success d-flex p-3">
				<img src="<%= music.get("thumbnail") %>">
				<div class="areaSize ml-4">
					<div class="display-4"><%= music.get("title") %></div>
					<h6 class="text-success font-weight-bold mt-3"><%= music.get("singer") %></h6>
					<div class="d-flex mt-4">
						<div class="informFont text-muted font-weight-light w-25">
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						<div class="informFont text-muted font-weight-light w-50">
							<div><%= music.get("album") %></div>
							<div><%= timeCalculator((Integer)music.get("time")) %></div>
							<div><%= music.get("composer") %></div>
							<div><%= music.get("lyricist") %></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="lyrics">
			<h4 class="font-weight-bold">가사</h4>
			<hr>
			<div>가사 정보 없음</div>
		</div>
		<%
				}
			} 
		%>
	</section>
	<hr>
	<footer>
		<div class="copyright p-1 text-muted ml-4">Copyright 2021. melong All Rights Reserved.</div>
	</footer>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>	

</body>
</html>
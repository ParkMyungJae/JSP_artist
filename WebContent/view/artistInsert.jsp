<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>

<br>
<h1 align="center">오디션 등록</h1>
<br>


<form action="/insert.do" method="POST" >
	<table border="1" width="600px">
		<tr>

			<td colspan="2" align="center">오디션 등록</td>
		</tr>
		<tr>
			<td align="center">참가번호</td>
			<td><input type="text" name="artist_id" ></td>
		</tr>
		<tr>
			<td align="center">참가자명</td>
			<td><input type="text" name="artist_name"></td>
		</tr>
		<tr>
			<td align="center">생년월일</td>
			<td><input type="text" size="15" name="artist_birth">
				</td>
		</tr>
		<tr>
			<td align="center">성별</td>
			<td><input type="radio" value="F" name="artist_gender">남<input
				type="radio" value="M" name="artist_gender">여</td>
		</tr>
		<tr>
			<td align="center">특기</td>
			<td><select name='talent'>
					<option value='' selected>특기 선택</option>
					<option value='1'>보컬</option>
					<option value='2'>댄스</option>
					<option value='3'>랩</option>
			</select></td>
		</tr>
		<tr>
			<td align="center">소속사</td>
			<td><input type="text" name="agency"></td>
		</tr>
		<tr>

			<td colspan="2" align="center"><input type="submit"
				value="오디션 등록" class="btn"><input type="reset" value="다시 쓰기" class="btn"></td>
		</tr>

	</table>
</form>

<%@ include file="/footer.jsp"%>
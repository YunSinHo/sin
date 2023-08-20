<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ld.admin.vo.LectureVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="https://kit.fontawesome.com/4054601d2a.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <style>
            body {
                background-color: black;
            }
            .video {
                width: 75%;
			    height: 44vw;
			    margin-left: 15%;
			    margin-top: 2.6042vw;
            }
            .sidemenu{
                text-align: center;
                position: fixed;
                top: 0;
                left : 0;
                background-color: aqua;
                width: 100px;
                height: 100%;
            }
            .sideindex{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .takenotes{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .wrongnotes{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .indextool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                text-align: center;
            }
            .taketool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                text-align: center;
            }
            .taketext{
                width: 95%;
                height: 500px;
                resize: none;
            }
            .wrongtool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                overflow-y: scroll;
                text-align: center;
            }
            ul{
                list-style:none;
                padding-left: 0px;
            }
            .buttonarea{
                position:fixed;
                top:37%;
                left:18%;
                width: 69%;
                display: flex;
                justify-content: space-between;
            }
            .prevideo{
                display: none;
            }
            .nextvideo{
                display: none;
            }
            .onevideo{
                display: block;
            }
            .fa-circle-chevron-left{
                color:blueviolet;
                background-color: white;
                border-radius: 30px;
            }
            .fa-circle-chevron-right{
                color:blueviolet;
                background-color: white;
                border-radius: 30px;
            }
            .subtitle{
                background-color: azure;
                position:fixed;
                left:17.5%;
                top:80%;
                border-radius: 3px;
                width:70%;
                height:140px;
            }
        </style>
    </head>
    <body>
        <div class="sidemenu">
            <div class="sideheader">
                로고
            </div>
            <hr>
            <div class="sidebody">
                <div class="takenotes">
                    <i class="fa-regular fa-note-sticky fa-4x"></i>
                    필기
                </div>
                <div class="wrongnotes">
                    <i class="fa-regular fa-circle-xmark fa-4x"></i>
                    오답
                </div>
            </div>
        </div>
        <div class="taketool">
            필기
            <hr>
            <textarea class="taketext"></textarea>
        </div>
        <div class="wrongtool">
            오답노트
            <hr>
        </div>
        <div>
            <iframe class="video" src="${lecture_view.lecture_link}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 1번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn1()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn1()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $('.takenotes').click(function(event){
                event.stopPropagation();
                $('.taketool').toggle();
                $('.wrongtool').hide();
                $('.indextool').hide();
            });
            $('.wrongnotes').click(function(event){
                event.stopPropagation();
                $('.wrongtool').toggle();
                $('.indextool').hide();
                $('.taketool').hide();
            });
        </script>
    </body>
</html>
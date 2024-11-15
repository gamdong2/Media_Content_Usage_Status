# 2022년도 초등학생 대상 콘텐츠 이용 실태 조사

## Skills
<img src="https://img.shields.io/badge/sql-F7931E?style=for-the-badge&logo=postgresql&logoColor=white"/>&nbsp;
<img src="https://img.shields.io/badge/pandas-150458.svg?style=for-the-badge&logo=pandas&logoColor=white"/>&nbsp;
<img src="https://img.shields.io/badge/matplotlib-003B57?style=for-the-badge&logo=matplotlib&logoColor=white"/>&nbsp;
<img src="https://img.shields.io/badge/sqlalchemy-003B57?style=for-the-badge&logo=sqlalchemy&logoColor=white"/>&nbsp;

## 프로젝트 상세

- **진행 기간**: 2024년 10월 10일
- **프로젝트 유형**: 개인 프로젝트

## 프로젝트 목표
- 초등학생(3~6학년)을 대상으로 한 교육 콘텐츠의 이용 현황 분석
- 학년별 콘텐츠 이용 특성 및 콘텐츠 유형(영상 강의, 문제 풀이 등)별 활용도 분석

## 사용한 데이터 셋
- **2022년도 초등학생 미디어 콘텐츠 이용 데이터**

## 워크플로우

- 데이터 수집 및 전처리: 여러 테이블을 조인하여 필요한 데이터를 수집하고, 학년별로 초등학생 데이터를 필터링
- 데이터 분석 및 시각화:
  - 학년별 콘텐츠 이용 패턴 분석: 학년별 콘텐츠 이용 횟수와 평균 학습 시간을 분석 → 학년에 따른 콘텐츠 활용 정도를 파악
  - 콘텐츠 유형별 분석: 콘텐츠 유형별로 선호도를 분석 → 각 콘텐츠에 대한 평균 점수를 계산하여 학생들이 자주 이용하는 콘텐츠 유형을 파악

## 프로젝트 결과

### 구현 기능
- 입력한 분기 값(1, 2, 3, 4)에 따라 학습 콘텐츠의 이용 현황을 확인할 수 있음
- 각 콘텐츠는 이용한 학생 수에 따라 순위가 매겨져, 가장 많은 학생들이 이용한 콘텐츠를 쉽게 파악할 수 있음
- 콘텐츠 유형별 분석: 영상 강의와 문제 풀이 콘텐츠에 대한 학년별 이용 빈도를 파악하여, 초등학교 3~6학년의 콘텐츠 선호도에 대한 통계 자료 도출

## 트러블 슈팅

- **성능 최적화**: 대량의 데이터 처리 시 쿼리 속도 저하 문제가 발생하여, 작은 테이블부터 우선적으로 JOIN하고 필요한 컬럼만 SELECT하는 방식으로 쿼리를 최적화

## 프로젝트를 통해 얻은 역량

- SQL 쿼리 작성을 통해 다수의 테이블을 조인하고 필요한 데이터를 정확히 추출
- 데이터 시각화를 통한 교육 콘텐츠 사용 실태 분석

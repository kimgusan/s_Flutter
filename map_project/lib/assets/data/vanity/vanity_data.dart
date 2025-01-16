// 허세리스트 타이틀
const List<Map<String, String>> vanityLevel = [
  {"vanityTitle": "저허세"},
  {"vanityTitle": "정상"},
  {"vanityTitle": "과한허세"},
  {"vanityTitle": "고도허세"},
  {"vanityTitle": "허언증 작렬"}
];

// 허세리스트 컨설팅 내용
const Map<String, Map<String, String>> vanityAdviceContext = {
  "high": {
    "car": "차량 구매 비용이 과다합니다. 소득의 50% 이하로 조정하거나, 중고차를 고려해보세요.",
    "bag": "핸드백 구매 비용이 높습니다. 연봉의 5% 이내로 조정을 추천드립니다.",
    "IT": "기기 가격이 높습니다. 실사용 기간을 고려해 더 저렴한 모델을 검토해보세요.",
    "watch": "시계 구매 비용이 과다합니다. 연봉의 30% 이내로 조정을 추천드립니다.",
    "expense": "사치품 지출이 높습니다. 가처분 소득의 30% 이내로 조정해보세요.",
  },
  "medium": {
    "car": "적절한 차량 선택입니다. 유지비용도 고려하여 계획을 세우세요.",
    "bag": "적정 수준의 구매입니다. 구매 전 2-3달 정도 고민하는 것을 추천드립니다.",
    "IT": "적정 수준의 구매입니다. 케이스 등 보호용품 구매도 고려하세요.",
    "watch": "적절한 선택입니다. 보험과 관리 비용도 고려하세요.",
    "expense": "균형잡힌 지출 패턴입니다. 계획적인 소비를 유지하세요."
  },
  "low": {
    "car": "건전한 소비 패턴입니다. 남은 자금으로 투자나 저축을 고려해보세요.",
    "bag": "합리적인 소비를 하고 계십니다. 품질과 실용성을 고려한 선택이 돋보입니다.",
    "IT": "실용적인 선택입니다. 할부나 약정을 잘 활용하고 계시네요.",
    "watch": "현명한 소비를 하고 계십니다. 시계는 장기 투자 관점으로도 좋습니다.",
    "expense": "건전한 소비 생활을 하고 계십니다. 저축과 투자도 함께 고려해보세요."
  }
};

// 허세리스트 아이템 (예시)
const List<Map<String, dynamic>> vanityItems = [
  {
    "category": "car",
    "items": [
      {
        "name": "아반떼",
        "price": 23000000,
        "image": 'lib/assets/images/vanity/car/car_avante.jpg',
      },
      {
        "name": "소나타",
        "price": 32000000,
        "image": 'lib/assets/images/vanity/car/car_sonata.jpg',
      },
      {
        "name": "G80",
        "price": 55000000,
        "image": 'lib/assets/images/vanity/car/car_g80.png',
      },
      {
        "name": "BMW5시리즈",
        "price": 75000000,
        "image": 'lib/assets/images/vanity/car/car_bmw.png',
      },
      {
        "name": "포르쉐 992",
        "price": 185000000,
        "image": 'lib/assets/images/vanity/car/car_po.png',
      },
      {
        "name": "람보르기니 우르스",
        "price": 405000000,
        "image": 'lib/assets/images/vanity/car/car_rambo.jpg',
      },
    ]
  },
  {
    "category": "bag",
    "items": [
      {
        "name": "코치 토트백",
        "price": 500000,
        "image": "/vanityImage/bagImage/bag_coach.jpeg",
      },
      {
        "name": "구찌 마몬트",
        "price": 2500000,
        "image": "/vanityImage/bagImage/bag_gucci.jpeg",
      },
      {
        "name": "루이비통 네버풀",
        "price": 5500000,
        "image": "/vanityImage/bagImage/bag_louisvuitton.jpeg",
      },
      {
        "name": "샤넬 플랩백",
        "price": 13000000,
        "image": "/vanityImage/bagImage/bag_chanel.webp",
      },
      {
        "name": "에르메스 버킨",
        "price": 21000000,
        "image": "/vanityImage/bagImage/bag_hermes.webp",
      },
    ]
  },
  {
    "category": "IT",
    "items": [
      {
        "name": "장비",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      },
      {
        "name": "device",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      }
    ]
  },
  {
    "category": "watch",
    "items": [
      {
        "name": "watch",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      },
      {
        "name": "watch2",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      }
    ]
  },
  {
    "category": "expense",
    "items": [
      {
        "name": "expense",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      },
      {
        "name": "expense2",
        "price": 2300000,
        "image": '/vanityImage/carimage/car.jpg'
      }
    ]
  },
];

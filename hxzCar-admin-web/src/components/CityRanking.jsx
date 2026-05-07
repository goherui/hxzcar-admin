function CityRanking({ cityRanking }) {
  const data = cityRanking || [
    { cityName: '北京市', orderCount: 15, ranking: 1, orderCountDiff: 12.35 },
    { cityName: '上海市', orderCount: 12, ranking: 2, orderCountDiff: 11.24 },
    { cityName: '广州市', orderCount: 10, ranking: 3, orderCountDiff: 10.32 },
    { cityName: '深圳市', orderCount: 8, ranking: 4, orderCountDiff: 8.78 },
    { cityName: '成都市', orderCount: 7, ranking: 5, orderCountDiff: 7.21 },
  ]

  const getRankingClass = (rank) => {
    switch (rank) {
      case 1:
        return 'top1'
      case 2:
        return 'top2'
      case 3:
        return 'top3'
      default:
        return 'other'
    }
  }

  return (
    <div className="city-ranking-content">
      {data.map((item) => (
        <div key={item.ranking} className="ranking-item">
          <div className={`ranking-number ${getRankingClass(item.ranking)}`}>
            {item.ranking}
          </div>
          <div className="ranking-info">
            <div className="ranking-city">{item.cityName}</div>
            <div className="ranking-count">{item.orderCount.toLocaleString()} 单</div>
          </div>
          <div className={`ranking-change ${item.orderCountDiff >= 0 ? '' : 'negative'}`}>
            {item.orderCountDiff >= 0 ? '+' : ''}{item.orderCountDiff.toFixed(2)}%
          </div>
        </div>
      ))}
    </div>
  )
}

export default CityRanking
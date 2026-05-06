import { Button } from 'antd'
import { cityRanking } from '../data/mockData'

function CityRanking() {
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
    <div className="city-ranking-card">
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 16 }}>
        <span className="chart-card-title">城市订单排名</span>
        <Button type="link" style={{ color: '#7c4dff', padding: 0 }}>
          更多 &gt;
        </Button>
      </div>
      <div>
        {cityRanking.map((item) => (
          <div key={item.rank} className="ranking-item">
            <div className={`ranking-number ${getRankingClass(item.rank)}`}>
              {item.rank}
            </div>
            <div className="ranking-info">
              <div className="ranking-city">{item.city}</div>
              <div className="ranking-count">{item.count.toLocaleString()} 单</div>
            </div>
            <div className={`ranking-change ${item.isPositive ? '' : 'negative'}`}>
              {item.change}
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default CityRanking
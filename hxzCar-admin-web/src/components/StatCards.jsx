import { statData } from '../data/mockData'

function StatCards() {
  return (
    <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: 20 }}>
      {statData.map((item, index) => (
        <div key={index} className="stat-card">
          <div 
            className="stat-card-icon" 
            style={{ 
              background: `${item.color}15`,
              boxShadow: `0 4px 12px ${item.color}20`,
            }}
          >
            <span style={{ color: item.color }}>{item.icon}</span>
          </div>
          <div className="stat-card-value">
            {item.value}
            <span>{item.unit}</span>
          </div>
          <div className="stat-card-label">{item.label}</div>
          <div className={`stat-card-change ${item.isPositive ? '' : 'negative'}`}>
            {item.isPositive ? '↑' : '↓'} {item.change}
          </div>
        </div>
      ))}
    </div>
  )
}

export default StatCards

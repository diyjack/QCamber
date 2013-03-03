#include "donutssymbol.h"

#include <QtGui>
#include <QRegExp>


DonutSSymbol::DonutSSymbol(QString def, Polarity polarity):
    Symbol(def, "donut_s([0-9.]+)x([0-9.]+)", polarity), m_def(def)
{
  QRegExp rx(m_pattern);
  if (!rx.exactMatch(def))
    throw InvalidSymbolException(def.toAscii());

  QStringList caps = rx.capturedTexts();
  m_od = caps[1].toDouble() / 1000.0;
  m_id = caps[2].toDouble() / 1000.0;

  m_bounding = painterPath().boundingRect();
}

QPainterPath DonutSSymbol::painterPath(void)
{
  QPainterPath m_cachedPath;

  m_cachedPath.addRect(-m_od / 2, -m_od / 2, m_od, m_od);
  m_cachedPath.addRect(-m_id / 2, -m_id / 2, m_id, m_id);

ret:

  return m_cachedPath;
}

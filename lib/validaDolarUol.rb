require "validaDolarUol/version"
require "open-uri"
require "nokogiri"
require "loofah"

module ValidaDolarUol
  def self.coletar

    html = Nokogiri::HTML.parse(open('http://cotacoes.economia.uol.com.br/cambio/cotacoes-historicas.html?cod=BRL'))
    dolar_uol = []

    html.xpath("//div[@class='infoTable']//tr[td[2]]").each do |row|
      cols = row.search('td/text()').map(&:to_s)
      dolar_uol << {
        :horario   => cols[0],
        :compra   => cols[1],
        :venda  => cols[2],
        :perc_Variacao => cols[3],
        :variação    => cols[4],
        :maximo    => cols[5],
        :minimo    => cols[6]
      }
    end
    p dolar_uol[0]
  end
end

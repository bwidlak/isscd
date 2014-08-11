module ApplicationHelper

  def dat_markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
        :autolink => true, :space_after_headers => true, :no_intra_emphasis => true)
    markdown.render(text).html_safe
  end

  def logo(size="normal")
    image_tag "", class: size
  end

  def contact_number
    "773.671.8833"
  end

  def full_address
    "<h2>Administration</h2>
    <h3>Constructions Boréal de l’Estrie</h3>
    <h4>
      1400 Émile-Zola<br />
      Sherbrooke (QC) J1L 0G8
    </h4>
    <h3>#{contact_number}</h3>".html_safe
  end
end

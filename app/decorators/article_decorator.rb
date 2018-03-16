class ArticleDecorator < Draper::Decorator
  delegate_all

  def posted_at
    h.content_tag :span, class: 'time' do
      model.created_at.strftime("%Y%m%d %H:%m")
    end
  end
end

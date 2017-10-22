class Contact < ApplicationRecord
  belongs_to :kind, optional: true

  # def as_json(options={})
  #   super(methods: [:author, :kind_description],
  #         root: true,
  #         include: { kind: { only: :description } }
  #   )
  # end

  # def author
  #   "Ítalo Pires"
  # end

  # def kind_description
  #   self.kind.description
  # end

  def hello
    I18n.t 'hello'
  end

  def i18n
    I18n.default_locale
  end
end

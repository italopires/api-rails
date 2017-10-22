class Contact < ApplicationRecord
  belongs_to :kind

  def as_json(options={})
    super(methods: :author, root: true)
  end

  def author
    "Ítalo Pires"
  end
end

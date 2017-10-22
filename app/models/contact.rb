class Contact < ApplicationRecord
  belongs_to :kind

  def as_json(options={})
    super(methods: [:author, :kind_description],
          root: true,
          include: { kind: { only: :description } }
    )
  end

  def author
    "Ítalo Pires"
  end

  def kind_description
    self.kind.description
  end
end

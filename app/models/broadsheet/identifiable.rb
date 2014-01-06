module Broadsheet
  module Identifiable
    extend ActiveSupport::Concern

    included do
      after_initialize :set_uuid
    end

    def set_uuid
      self.uuid = SecureRandom.uuid unless uuid.present?
    end

    module ClassMethods

      def with_uuid(uuid)
        find_by(uuid: uuid)
      end

    end

  end
end

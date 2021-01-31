class MeetingSerializer
  include JSONAPI::Serializer
  attributes :title, :start_time, :end_time, :date, :detail, :comment
end

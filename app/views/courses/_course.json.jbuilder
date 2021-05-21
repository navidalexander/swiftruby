json.extract! course, :id, :user_id, :course_number, :course_icon, :course_image, :name, :description, :created_at, :updated_at
json.url course_url(course, format: :json)

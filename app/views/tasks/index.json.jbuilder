json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :start_date, :due_date, :tasklist_id
  json.url task_url(task, format: :json)
end

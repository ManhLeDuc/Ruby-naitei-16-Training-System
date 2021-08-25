module ApplicationHelper
  def full_title page_title
    base_title = t ".project_name"
    page_title.blank? ? base_title : [page_title, base_title].join(" | ")
  end

  def get_report_view
    if current_user.role_trainee?
      Settings.trainee_report
    else
      Settings.supervisor_report
    end
  end

  def hasnt_finished_course
    @finished_rate != 100
  end

  def get_btn_type
    if hasnt_finished_course
      Settings.disabled_btn
    else
      Settings.enabled_btn
    end
  end
end

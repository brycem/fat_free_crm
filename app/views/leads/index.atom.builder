atom_feed do |feed|
  feed.title("CRM LEADS")
  feed.updated(@leads.first.updated_at)
  
  @leads.each do |lead|
    feed.entry(lead) do |entry|
      entry.title("#{lead.first_name} #{lead.last_name}")
      entry.content(lead.comments.first.comment[0..250], :type => "html") rescue nil
    end
  end
end
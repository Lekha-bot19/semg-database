-- Query 1: Sponsorship revenue per event
-- Business question: which events attract the most sponsorship funding?
SELECT
  e.title,
  SUM(es.sponsorship_amount) AS total_sponsorship
FROM Event e
JOIN Event_Sponsor es ON e.event_id = es.event_id
GROUP BY e.title
ORDER BY total_sponsorship DESC;

-- Query 2: Average attendee rating per event
-- Business question: which events do attendees rate highest and lowest?
SELECT
  e.title,
  AVG(fr.rating) AS average_rating
FROM Event e
JOIN Feedback_Form ff ON e.event_id = ff.event_id
JOIN Feedback_Response fr ON ff.feedback_form_id = fr.feedback_form_id
GROUP BY e.title
ORDER BY average_rating DESC;

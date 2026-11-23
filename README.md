# SEMG Event Management Database

A relational SQLite database for the Summit Event Management Group (SEMG), a fictional company that runs conferences and private events. I designed it for my MBIS623 Data Management assignment at the University of Canterbury (May 2026) to replace a spreadsheet-based tracking system.

## What's in it

**20 tables** covering the full event lifecycle:

- **Core:** Client, Venue, Event, Staff, Service, Attendee
- **Programme:** Workshop, Speaker, Expertise
- **Money:** Invoice, Payment, Ticket
- **Many-to-many (junction) tables:** Staff_Assignment, Event_Service, Workshop_Speaker, Speaker_Expertise
- **Feedback:** Feedback_Form, Feedback_Response
- **My extension, sponsorship management:** Sponsor, Event_Sponsor

## Design choices

- **Foreign keys** link every dependent table to its parent, for example Event → Venue and Client, and Payment → Invoice, so a record can't point to something that doesn't exist.
- **Junction tables** resolve many-to-many relationships. Event_Sponsor also stores data about the relationship itself (sponsorship amount and type), because one sponsor can fund many events and one event can have many sponsors.
- **Composite primary keys** on junction tables, for example `(staff_id, event_id, assignment_date)`, so the same staff member can't be double-booked on the same event and day.
- **Constraints:** `NOT NULL` on required names, `UNIQUE` on client and sponsor emails, and `CHECK (rating BETWEEN 1 AND 5)` on feedback ratings.
- **The extension:** events are often funded by sponsors, so I added Sponsor and Event_Sponsor to track who sponsors which event, how much they give, and whether it's cash or in-kind.

## Files

```
schema.sql     creates all 20 tables
seed.sql       sample data (10+ rows per table)
queries.sql    the two business queries
semg.db        ready-built database (schema + sample data)
```

## How to run it

Open `semg.db` in [DB Browser for SQLite](https://sqlitebrowser.org/), go to the **Execute SQL** tab and paste in a query from `queries.sql`.

Or build it from scratch on the command line:

```
sqlite3 semg.db < schema.sql
sqlite3 semg.db < seed.sql
sqlite3 semg.db < queries.sql
```

## Queries and results

**Query 1: Which events attract the most sponsorship?**
Joins Event and Event_Sponsor, then totals sponsorship per event (SUM, GROUP BY, ORDER BY). This helps SEMG see which kinds of events are worth pitching to sponsors.

| Event | Total sponsorship ($) |
|---|---|
| NZ Tech Summit 2026 | 40,000 |
| Harbour Finance Leaders Forum | 20,000 |
| Canterbury AgriTech Showcase | 11,500 |
| GreenLeaf Energy Expo | 9,000 |
| Kowhai Health Conference | 6,000 |
| Summit Education Symposium | 5,000 |
| Pacific Retail Awards Night | 3,000 |

**Query 2: Which events do attendees rate highest?**
Joins three tables (Event → Feedback_Form → Feedback_Response) and averages the ratings for each event. This helps SEMG find what works and fix what doesn't.

| Event | Average rating (1–5) |
|---|---|
| Tasman Legal Client Breakfast | 5.0 |
| Riverstone Safety Day | 5.0 |
| NZ Tech Summit 2026 | 4.7 |
| Canterbury AgriTech Showcase | 4.5 |
| Pacific Retail Awards Night | 4.0 |
| Harbour Finance Leaders Forum | 4.0 |
| Kowhai Health Conference | 3.5 |
| GreenLeaf Energy Expo | 3.5 |

I checked the data with `PRAGMA foreign_key_check`, which returned no orphaned records.

## About the sample data

The schema and queries are from my original assignment. The sample data in `seed.sql` was **added in November 2026** so the queries have something to run on. All names, companies and contact details are fictional.

## What I'd improve next

- Group the queries by `event_id` instead of `title`, so two events with the same name aren't merged.
- Round the average rating with `ROUND(AVG(fr.rating), 1)`.
- Add a query for unpaid invoices: compare `Invoice.total_amount` with the sum of `Payment.amount_paid`.

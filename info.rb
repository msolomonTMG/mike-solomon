def get_experience
	experience = {
		:current => {
			:position => "Product Manager",
			:company => "Thrillist Media Group",
			:industries => [
				"Media",
				"eCommerce"
			],
			:start => "September 2014",
			:end => "Present",
			:description => "Drive the product development of JackThreads. Act as the glue between the design, development and business teams."
		},
		:previous => [
			{
				:position => "Project Lead",
				:company => "VistaOne Solutions",
				:industries => [
					"Financial Services",
					"SaaS"
				],			
				:start => "May 2012",
				:end => "November 2013",
				:description => "Lead a global team of 10 analysts building secure online portals for the world's largest hedge fund administrations.",
			},
			{
				:position => "Technical Analyst",
				:company => "VistaOne Solutions",
				:industries => [
					"Financial Services",
					"SaaS"
				],			
				:start => "November 2013",
				:end => "September 2014",
				:description => "Configure custom dashboards, reports and views for hedge fund administrators.",
			}
		]
	}
	return experience
end

def get_skills
	skills = {
		:project_management => {
			:tools => [
				{
					:ticket_tracking => "Atlassian JIRA"
				},
				{
					:version_control => "GitHub"
				},
				{
					:project_planning => "Microsoft Project"
				},
			],
			:code => [
				"ruby",
				"PHP",
				"JavaScript",
				"HTML/CSS",
				"SQL"
			],
			:management => [
				"scrum sprints",
				"budget forecasting",
				"resource allocation"
			]
		}
	}
	return skills
end

def get_education
	education = {
		:graduate => {
			:institution => "Stony Brook University",
			:degree => "M.S. Technological Systems Management",
			:emphasis => "Global Operations Management",
			:college => "Engineering and Applied Sciences",
			:department => "Technoloy and Society",
			:expected => 2017,
			:description => "Global Operations Management program enables individuals to understand the integration of an enterprise's processes, and how to utilize modern tools, techniques and technologies to make their organization more competitive and profitable. The goal of the program is to increase the student's value to their organization. This is accomplished by introducing the strategic fundamentals of the customer/value driven enterprise, the management concepts of organizational design and structure, and the basic business processes for running an enterprise, including quality, finance and accounting, and information systems."
		},
		:undergraduate => {
			:institution => "University at Albany",
			:degree => "Information Science",
			:minor => "Computer Science",
			:college => "Engineering and Applied Sciences",
			:department => "Information Studies",
			:awarded => 2012,
			:description => "The flow of information from its origination to utilization; personal, economic, political and social value of information; the cognitive, intellectual and technological structures that govern information transfer."
		},
		:extracurriculars => {
			:teacher_assistant => {
				:course => "Web Development",
				:subjects => [
					{
						:html => "HTML5",
						:css => "CSS3",
						:javascript => "beginner skill level",
						:php => "beginner skill level"
					}
				]
			},
			:athletics => [
				{
					:football => {
						:division => 3,
						:position => "Offensive Line",
						:awards => "Conference Champions",
						:institution => "Muhlenberg College"
					}
				}
			]
		}
	}
	return education
end
# Trending Youtube videos-ETL
<h3>Objective:</h3>
 The objective is to perform the ETL(Extract-Transform-Load) process by reading the dataset of Trending YouTube videos obtained from Kaggle, cleaning the dataset in the desired     form and loading into a database for storage.
<h3>Data Source:</h3>https://www.kaggle.com/datasnaek/youtube-new
<h3>Methodology</h3>
 We have been provided with the dataset of YouTube videos that have been trending in Canada and US along with the dataset of various categories they are belonging to. We are        required to perform an ETL on the datasets which can be uploaded into production to determine which categories or video are most or least popular after depending on number of     views, likes, dislikes and comments.<br> 
 We have performed ETL in three steps:<br>
<strong>Extraction:</strong> The data has been downloaded from public platform Kaggle, the files used for extraction were originally formatted as .csv and .json:

1. https://www.kaggle.com/datasnaek/youtube-new#CAvideos.csv
2. https://www.kaggle.com/datasnaek/youtube-new#USvideos.csv
3. https://www.kaggle.com/datasnaek/youtube-new#US_category_id.json

The .csv and .json files are then read into a Pandas data frame in Jupyter notebook.<br><br>
<strong>Transformation:</strong> Python has been used as the tool for transformation of datasets using the Pandas Library.<br><br>
<strong>Loading:</strong> Relational database PostgresSQL has been used to load the data.

 

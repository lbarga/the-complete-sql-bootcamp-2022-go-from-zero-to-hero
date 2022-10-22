import psycopg2 as pg2

print('try connect')
conn = pg2.connect(database='dvdrental', user='root',password='root')

print('connected')
cur = conn.cursor()

cur.execute("SELECT * FROM payment;")
# cur.fetchone()
# cur.fetchmany(10)
# cur.fetchall()

query1 = '''
        CREATE TABLE new_table (
            userid integer
            , type varchar(50)
        );
        '''

cur.execute(query1)

conn.commit()

query1 = '''
        INSERT INTO new_table VALUES(
            1,
            'first person'
        );
        '''

cur.execute(query1)

conn.commit()

cur.execute("SELECT * FROM new_table;")

print('============')
print(cur.fetchone())
print('============')

print('closing connection')
conn.close()

print('connection closed')

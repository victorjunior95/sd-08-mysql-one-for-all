for i in {1...11}
do
    touch desafio$i.sql
done
touch desafio1.package.json
git add --all
git commit -am "Initial Commit - Clean Up"
git push -u origin Felipe-Franca-mysql-one-for-all

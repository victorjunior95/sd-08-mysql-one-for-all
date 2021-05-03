Lenght = 1
while [$Lenght -lt 11]; do
    touch desafio$Lenght.sql;
    let Lenght = Lenght + 1;
done
touch desafio1.package.json
git add --all
git commit -am "Initial Commit - Clean Up"
git push -u origin Felipe-Franca-mysql-one-for-all

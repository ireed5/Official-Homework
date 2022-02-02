#!/usr/bin/env python
# coding: utf-8

# Question 1

# In[11]:


n = 0 
while n < 10:
    print(n)
    n = n + 1
    if n == 5:
        break


# Question 2

# In[12]:


n = 0
while n < 5:
    print (n)
    n = n + 1
else:
    print ("5 is not less than 5")


# Question 3

# In[13]:


favoritefruit = ["watermelon", "honeydew", "apple"]
print(favoritefruit)


# In[14]:


for fruit in favoritefruit:
    if fruit == "apple":
        break
    print("I like", fruit)
print("apple is really a fruit?")


# Question 4

# In[15]:


n = 30
sum = 0
i = 1

while i <= n:
    sum = sum + i
    i = i+1
    
print("The sum is", sum)


# Question 5

# In[16]:


cstudent = 71


# In[17]:


if cstudent >= 90:
    print('A')
elif cstudent >= 80:
    print('B')
elif cstudent >= 70:
    print('C')
elif cstudent >= 60:
    print('D')
else:
    print('F')


# Question 6

# In[1]:


grades = {"Andy": 88, "Amy": 66, "James": 90, "Jules": 55, "Arthur": 77}


# In[2]:


for student in grades:
    print ("Student", str(student), "got", str(grades[student]))


# In[3]:


meangrade = sum(grades.values()) / len(grades.values())
print(meangrade)


# In[4]:


all_values = grades.values()
max_value = max(all_values)


# In[5]:


print(max_value)


# In[6]:


all_values = grades.values()
min_value = min(all_values)


# In[7]:


print(min_value)


# In[9]:


key = grades.keys()
for key in grades:
    if 'J' in key:
        break
    print(key)


# In[10]:


key = grades.keys()
for key in grades:
    if 'J' in key:
        continue
    print(key)


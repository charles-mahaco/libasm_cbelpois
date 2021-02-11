#include <unistd.h>
#include <stdio.h>
#include <sys/errno.h>
#include <string.h>
#include <stdlib.h>
#include <fcntl.h>


int		ft_strlen(char *s);
char	*ft_strcpy(char *dest, char *src);
int		ft_strcmp(char *a, char *b);
int		ft_write(int fd, void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);

int main()
{
	char *str = "123";
	char dest[15];
	char test[5999999] = "hello";
	char *dup;
	char *dup2;
	//printf("%d\n", ft_strlen(str));
	//printf("%s\n", ft_strcpy(dest, str));
	//printf("%d\n", ft_strcmp(test, str));
	//printf("%d\n", strcmp(test, str));
	
	printf("%d", ft_write(1, "salut\n", -43));
	printf("\n");
	int errnum = errno;
	fprintf(stderr, "Value of errno: %d\n", errno);
    perror("Error printed by perror");
    fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	printf("%ld", write(1, "salut\n", -43));
	printf("\n");
	errnum = errno;
	fprintf(stderr, "Value of errno: %d\n", errno);
    perror("Error printed by perror");
    fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
    read(-6, dest, 2);
    printf("%s\n", dest);
    errnum = errno;
	fprintf(stderr, "Value of errno: %d\n", errno);
    perror("Error printed by perror");
    fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
    ft_read(-10, dest, 2);
    printf("%s\n", dest);
    errnum = errno;
	fprintf(stderr, "Value of errno: %d\n", errno);
    perror("Error printed by perror");
    fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
	dup = ft_strdup(str);
	printf("%s\n", dup);
	dup2 = strdup(test);
	printf("%s\n", dup2);
	fprintf(stderr, "Value of errno: %d\n", errno);
    perror("Error printed by perror");
    fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
    free(dup);
    free(dup2);
}
.class public Lcom/google/android/gms/common/i;

.super Ljava/lang/Object;

.source "WazeSource"

# static fields

.field private static a:Z

.field public static final b:I

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

.end field

.field static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

# direct methods

.method static constructor <clinit>()V

    .registers 2

    .prologue

    const/4 v1, 0x0

    .line 188

    const v0, 0xb5bb70

    sput v0, Lcom/google/android/gms/common/i;->b:I

    .line 189

    sput-boolean v1, Lcom/google/android/gms/common/i;->a:Z

    .line 190

    sput-boolean v1, Lcom/google/android/gms/common/i;->d:Z

    .line 191

    sput-boolean v1, Lcom/google/android/gms/common/i;->e:Z

    .line 192

    sput-boolean v1, Lcom/google/android/gms/common/i;->f:Z

    .line 193

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/i;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

.end method

.method public static a(I)Ljava/lang/String;

    .registers 2

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    .line 5

    invoke-static {p0}, Lcom/google/android/gms/common/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

.end method

.method public static a(Landroid/content/Context;I)Z

    .registers 3

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    .line 77

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/i;->a(Landroid/content/Context;I)Z

    move-result v0

    return v0

.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z

    .registers 7

    .annotation build Landroid/annotation/TargetApi;

        value = 0x15

    .end annotation

    .prologue

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 162

    invoke-static {}, Lcom/google/android/gms/common/util/f;->f()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 163

    :try_start_f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    :try_end_1a

    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_37

    move-result-object v0

    .line 167

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 168

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 187

    :goto_36

    return v0

    .line 166

    :catch_37

    move-exception v0

    move v0, v2

    goto :goto_36

    .line 171

    :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 172

    const/16 v4, 0x2000

    .line 173

    :try_start_40

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 174

    if-eqz v3, :cond_49

    .line 175

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_36

    .line 176

    :cond_49

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_7d

    .line 177

    invoke-static {}, Lcom/google/android/gms/common/util/f;->c()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 178

    const-string/jumbo v0, "user"

    .line 179

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 180

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 181

    if-eqz v0, :cond_7b

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "restricted_profile"

    .line 182

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_end_73

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_73} :catch_7f

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    .line 185

    :goto_77

    if-nez v0, :cond_7d

    move v0, v1

    goto :goto_36

    :cond_7b

    move v0, v2

    .line 184

    goto :goto_77

    :cond_7d

    move v0, v2

    .line 185

    goto :goto_36

    .line 187

    :catch_7f

    move-exception v0

    move v0, v2

    goto :goto_36

.end method

.method public static b(I)Z

    .registers 2

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    .line 115

    packed-switch p0, :pswitch_data_8

    .line 117

    :pswitch_3

    const/4 v0, 0x0

    :goto_4

    return v0

    .line 116

    :pswitch_5

    const/4 v0, 0x1

    goto :goto_4

    .line 115

    nop

    :pswitch_data_8

    .packed-switch 0x1

        :pswitch_5

        :pswitch_5

        :pswitch_5

        :pswitch_3

        :pswitch_3

        :pswitch_3

        :pswitch_3

        :pswitch_3

        :pswitch_5

    .end packed-switch

.end method

.method public static b(Landroid/content/Context;I)Z

    .registers 4

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    const/4 v0, 0x1

    .line 153

    const/16 v1, 0x12

    if-ne p1, v1, :cond_6

    .line 157

    :goto_5

    return v0

    .line 155

    :cond_6

    if-ne p1, v0, :cond_10

    .line 156

    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    .line 157

    :cond_10

    const/4 v0, 0x0

    goto :goto_5

.end method

.method public static c(Landroid/content/Context;)I

    .registers 9

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 7

    :try_start_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 8

    sget v4, Lcom/google/android/gms/a$b;->common_google_play_services_unknown_issue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    :try_end_11

    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_35

    .line 12

    :goto_11

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 14

    sget-object v3, Lcom/google/android/gms/common/i;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 15

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->a(Landroid/content/Context;)I

    move-result v3

    .line 16

    if-nez v3, :cond_40

    .line 17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11

    :catch_35

    move-exception v3

    const-string/jumbo v3, "GooglePlayServicesUtil"

    const-string/jumbo v4, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 18

    :cond_40

    sget v4, Lcom/google/android/gms/common/i;->b:I

    if-eq v3, v4, :cond_8a

    .line 19

    new-instance v0, Ljava/lang/IllegalStateException;

    sget v1, Lcom/google/android/gms/common/i;->b:I

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x122

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " but found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21

    :cond_8a

    invoke-static {p0}, Lcom/google/android/gms/common/util/d;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c3

    invoke-static {p0}, Lcom/google/android/gms/common/util/d;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c3

    move v4, v1

    .line 22

    :goto_97

    const/4 v3, 0x0

    .line 23

    if-eqz v4, :cond_a3

    .line 24

    :try_start_9a

    const-string/jumbo v3, "com.android.vending"

    const/16 v6, 0x2040

    .line 25

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :try_end_a2

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9a .. :try_end_a2} :catch_c5

    move-result-object v3

    .line 30

    :cond_a3

    :try_start_a3

    const-string/jumbo v6, "com.google.android.gms"

    const/16 v7, 0x40

    .line 31

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :try_end_ab

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_ab} :catch_d0

    move-result-object v6

    .line 36

    invoke-static {p0}, Lcom/google/android/gms/common/j;->a(Landroid/content/Context;)Lcom/google/android/gms/common/j;

    .line 37

    if-eqz v4, :cond_f0

    .line 38

    sget-object v4, Lcom/google/android/gms/common/t;->a:[Lcom/google/android/gms/common/q;

    .line 39

    invoke-static {v3, v4}, Lcom/google/android/gms/common/j;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/q;)Lcom/google/android/gms/common/q;

    move-result-object v3

    .line 40

    if-nez v3, :cond_dc

    .line 41

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67

    :goto_c2

    return v0

    :cond_c3

    move v4, v2

    .line 21

    goto :goto_97

    .line 28

    :catch_c5

    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store is missing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 34

    :catch_d0

    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services is missing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 35

    goto :goto_c2

    .line 43

    :cond_dc

    new-array v4, v1, [Lcom/google/android/gms/common/q;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Lcom/google/android/gms/common/j;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/q;)Lcom/google/android/gms/common/q;

    move-result-object v3

    if-nez v3, :cond_102

    .line 44

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 47

    :cond_f0

    sget-object v3, Lcom/google/android/gms/common/t;->a:[Lcom/google/android/gms/common/q;

    invoke-static {v6, v3}, Lcom/google/android/gms/common/j;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/q;)Lcom/google/android/gms/common/q;

    move-result-object v3

    if-nez v3, :cond_102

    .line 48

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 50

    :cond_102

    sget v0, Lcom/google/android/gms/common/i;->b:I

    .line 51

    div-int/lit16 v0, v0, 0x3e8

    .line 53

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 54

    div-int/lit16 v3, v3, 0x3e8

    .line 55

    if-ge v3, v0, :cond_139

    .line 56

    const-string/jumbo v0, "GooglePlayServicesUtil"

    sget v1, Lcom/google/android/gms/common/i;->b:I

    iget v2, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Google Play services out of date.  Requires "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57

    const/4 v0, 0x2

    goto :goto_c2

    .line 58

    :cond_139

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59

    if-nez v0, :cond_145

    .line 60

    :try_start_13d

    const-string/jumbo v0, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    :try_end_144

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13d .. :try_end_144} :catch_14c

    move-result-object v0

    .line 65

    :cond_145

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_159

    .line 66

    const/4 v0, 0x3

    goto/16 :goto_c2

    .line 62

    :catch_14c

    move-exception v0

    .line 63

    const-string/jumbo v2, "GooglePlayServicesUtil"

    const-string/jumbo v3, "Google Play services missing when getting application info."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 64

    goto/16 :goto_c2

    :cond_159

    move v0, v2

    .line 67

    goto/16 :goto_c2

.end method

.method public static d(Landroid/content/Context;)Z

    .registers 8

    .prologue

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 80

    .line 82

    sget-boolean v2, Lcom/google/android/gms/common/i;->f:Z

    if-nez v2, :cond_2e

    .line 84

    :try_start_6

    invoke-static {p0}, Lcom/google/android/gms/c/ba;->a(Landroid/content/Context;)Lcom/google/android/gms/c/az;

    move-result-object v2

    .line 85

    const-string/jumbo v3, "com.google.android.gms"

    const/16 v4, 0x40

    .line 86

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/c/az;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 87

    if-eqz v2, :cond_3f

    .line 88

    invoke-static {p0}, Lcom/google/android/gms/common/j;->a(Landroid/content/Context;)Lcom/google/android/gms/common/j;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/common/q;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gms/common/t;->a:[Lcom/google/android/gms/common/q;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 89

    invoke-static {v2, v3}, Lcom/google/android/gms/common/j;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/q;)Lcom/google/android/gms/common/q;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 90

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/gms/common/i;->e:Z

    :try_end_2c

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_2c} :catch_43

    .catchall {:try_start_6 .. :try_end_2c} :catchall_50

    .line 92

    :goto_2c

    sput-boolean v1, Lcom/google/android/gms/common/i;->f:Z

    .line 99

    :cond_2e

    :goto_2e

    sget-boolean v2, Lcom/google/android/gms/common/i;->e:Z

    .line 100

    if-nez v2, :cond_3d

    .line 101

    const-string/jumbo v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 102

    if-nez v2, :cond_3e

    :cond_3d

    move v0, v1

    :cond_3e

    return v0

    .line 91

    :cond_3f

    const/4 v2, 0x0

    :try_start_40

    sput-boolean v2, Lcom/google/android/gms/common/i;->e:Z

    :try_end_42

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_42} :catch_43

    .catchall {:try_start_40 .. :try_end_42} :catchall_50

    goto :goto_2c

    .line 94

    :catch_43

    move-exception v2

    .line 95

    :try_start_44

    const-string/jumbo v3, "GooglePlayServicesUtil"

    const-string/jumbo v4, "Cannot find Google Play services package name."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_end_4d

    .catchall {:try_start_44 .. :try_end_4d} :catchall_50

    .line 96

    sput-boolean v1, Lcom/google/android/gms/common/i;->f:Z

    goto :goto_2e

    .line 98

    :catchall_50

    move-exception v0

    sput-boolean v1, Lcom/google/android/gms/common/i;->f:Z

    throw v0

.end method

.method public static e(Landroid/content/Context;)V

    .registers 3

    .annotation runtime Ljava/lang/Deprecated;

    .end annotation

    .prologue

    .line 106

    sget-object v0, Lcom/google/android/gms/common/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114

    :cond_9

    :goto_9

    return-void

    .line 108

    :cond_a

    :try_start_a

    const-string/jumbo v0, "notification"

    .line 109

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 110

    if-eqz v0, :cond_9

    .line 111

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :try_end_1a

    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_9

    .line 114

    :catch_1b

    move-exception v0

    goto :goto_9

.end method

.method public static f(Landroid/content/Context;)Landroid/content/res/Resources;

    .registers 3

    .prologue

    .line 134

    .line 135

    :try_start_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    .line 136

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    :try_end_a

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    .line 139

    :goto_b

    return-object v0

    :catch_c

    move-exception v0

    const/4 v0, 0x0

    goto :goto_b

.end method

.method public static g(Landroid/content/Context;)Landroid/content/Context;

    .registers 3

    .prologue

    .line 140

    :try_start_0

    const-string/jumbo v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    :try_end_7

    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 142

    :goto_8

    return-object v0

    :catch_9

    move-exception v0

    const/4 v0, 0x0

    goto :goto_8

.end method


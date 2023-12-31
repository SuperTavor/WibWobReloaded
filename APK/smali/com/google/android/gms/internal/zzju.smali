.class public final Lcom/google/android/gms/internal/zzju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appdatasearch/zzk;
.implements Lcom/google/android/gms/appindexing/AppIndexApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzju;->zzb(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v2, v3, v0, p3}, Lcom/google/android/gms/internal/zzjt;->zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/appdatasearch/UsageInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppIndex: The URI scheme must be \'android-app\' and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppIndex: The URI host must match the package name and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/[host_path]). Provided URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static zzp(Ljava/util/List;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzju;->zzb(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public action(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/appindexing/AppIndexApi$ActionResult;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/zzju$zza;-><init>(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/appindexing/Action;)V

    return-object v1
.end method

.method public end(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/internal/zzju;->zzp(Ljava/util/List;)V

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/google/android/gms/appdatasearch/UsageInfo;

    const/4 v9, 0x0

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo;

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/appdatasearch/UsageInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V

    aput-object v0, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/zzju;->zzb(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/zzju;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzju;->view(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    invoke-direct {v1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;-><init>()V

    invoke-static {v0, p3}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzan(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzao(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzlv()Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/appdatasearch/UsageInfo;

    aput-object v0, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/zzju;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzju;->viewEnd(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$zza;-><init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public varargs zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzju$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzju$1;-><init>(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

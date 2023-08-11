.class public Lcom/google/android/gms/internal/zzjt;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzox$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 3

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzM(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbB(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbA(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzlt()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzse;->zzf(Lcom/google/android/gms/internal/zzse;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzlx()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "object"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzju;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v5, v0, v6, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v1

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzh([B)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const-string v5, ".private:isContextOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v5, ".private:action"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzjt;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzox$zzc;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/zzjt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzox$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    new-instance v3, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    invoke-direct {v3}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;-><init>()V

    invoke-static {p3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzan(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzlo()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzO(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzao(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzlv()Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method static zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzox$zzc;
    .locals 8

    new-instance v2, Lcom/google/android/gms/internal/zzox$zzc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzox$zzc;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/zzox$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzox$zzb;-><init>()V

    iput-object v0, v5, Lcom/google/android/gms/internal/zzox$zzb;->name:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzox$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzox$zzd;-><init>()V

    iput-object v0, v5, Lcom/google/android/gms/internal/zzox$zzb;->zzaCZ:Lcom/google/android/gms/internal/zzox$zzd;

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v6, v5, Lcom/google/android/gms/internal/zzox$zzb;->zzaCZ:Lcom/google/android/gms/internal/zzox$zzd;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/google/android/gms/internal/zzox$zzd;->zzagS:Ljava/lang/String;

    :goto_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, v1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/google/android/gms/internal/zzox$zzb;->zzaCZ:Lcom/google/android/gms/internal/zzox$zzd;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzjt;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzox$zzc;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzox$zzd;->zzaDe:Lcom/google/android/gms/internal/zzox$zzc;

    goto :goto_1

    :cond_1
    const-string v0, "SearchIndex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzox$zzb;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzox$zzb;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    return-object v2
.end method

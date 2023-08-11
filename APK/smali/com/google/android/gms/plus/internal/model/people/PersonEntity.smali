.class public final Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

.field private static final zzaSS:Ljava/util/HashMap;


# instance fields
.field final mVersionCode:I

.field zzF:Ljava/lang/String;

.field zzTa:Ljava/lang/String;

.field zzVT:Ljava/lang/String;

.field final zzaST:Ljava/util/Set;

.field zzaTR:Ljava/lang/String;

.field zzaTS:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

.field zzaTT:Ljava/lang/String;

.field zzaTU:Ljava/lang/String;

.field zzaTV:I

.field zzaTW:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

.field zzaTX:Ljava/lang/String;

.field zzaTY:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

.field zzaTZ:Z

.field zzaUa:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

.field zzaUb:Ljava/lang/String;

.field zzaUc:I

.field zzaUd:Ljava/util/List;

.field zzaUe:Ljava/util/List;

.field zzaUf:I

.field zzaUg:I

.field zzaUh:Ljava/lang/String;

.field zzaUi:Ljava/util/List;

.field zzaUj:Z

.field zzsR:I

.field zzwN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/model/people/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "aboutMe"

    const-string v2, "aboutMe"

    invoke-static {v2, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "ageRange"

    const-string v2, "ageRange"

    const-class v3, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    invoke-static {v2, v9, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    invoke-static {v2, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "braggingRights"

    const-string v2, "braggingRights"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "circledByCount"

    const-string v2, "circledByCount"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "cover"

    const-string v2, "cover"

    const/4 v3, 0x7

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "currentLocation"

    const-string v2, "currentLocation"

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "displayName"

    const-string v2, "displayName"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0xc

    new-instance v4, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v4}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v5, "male"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "female"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "isPlusUser"

    const-string v2, "isPlusUser"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "language"

    const-string v2, "language"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "nickname"

    const-string v2, "nickname"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "objectType"

    const-string v2, "objectType"

    const/16 v3, 0x15

    new-instance v4, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v4}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v5, "person"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "page"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "organizations"

    const-string v2, "organizations"

    const/16 v3, 0x16

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$OrganizationsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "placesLived"

    const-string v2, "placesLived"

    const/16 v3, 0x17

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$PlacesLivedEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "plusOneCount"

    const-string v2, "plusOneCount"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "relationshipStatus"

    const-string v2, "relationshipStatus"

    const/16 v3, 0x19

    new-instance v4, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v4}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;-><init>()V

    const-string v5, "single"

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "in_a_relationship"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "engaged"

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "married"

    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "its_complicated"

    invoke-virtual {v4, v5, v10}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "open_relationship"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "widowed"

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "in_domestic_partnership"

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    const-string v5, "in_civil_union"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "tagline"

    const-string v2, "tagline"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "urls"

    const-string v2, "urls"

    const/16 v3, 0x1c

    const-class v4, Lcom/google/android/gms/plus/internal/model/people/PersonEntity$UrlsEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "verified"

    const-string v2, "verified"

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzTa:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzwN:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTY:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput p4, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUc:I

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;ZLjava/lang/String;Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;Ljava/lang/String;ILjava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTR:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTS:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTU:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTV:I

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTW:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTX:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzTa:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsR:I

    iput-object p12, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzwN:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTY:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    iput-boolean p14, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTZ:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzVT:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUa:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUb:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUc:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUd:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUe:Ljava/util/List;

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUf:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUg:I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUh:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUi:Ljava/util/List;

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUj:Z

    return-void
.end method

.method public static zzt([B)Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/model/people/zza;->zzgo(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzBO()Lcom/google/android/gms/plus/internal/model/people/PersonEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTR:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTS:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTT:Ljava/lang/String;

    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTU:Ljava/lang/String;

    return-object v0
.end method

.method public getCircledByCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTV:I

    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTW:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTX:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzTa:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsR:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzwN:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTY:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzVT:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUa:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUb:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUc:I

    return v0
.end method

.method public getOrganizations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUd:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlacesLived()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUe:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlusOneCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUf:I

    return v0
.end method

.method public getRelationshipStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUg:I

    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUh:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUi:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasAboutMe()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAgeRange()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBirthday()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBraggingRights()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCircledByCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCover()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCurrentLocation()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasIsPlusUser()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNickname()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasObjectType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasOrganizations()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlacesLived()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlusOneCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRelationshipStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTagline()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrls()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasVerified()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpK()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlusUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTZ:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUj:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/people/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/model/people/zza;->zza(Lcom/google/android/gms/plus/internal/model/people/PersonEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBK()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaSS:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzBO()Lcom/google/android/gms/plus/internal/model/people/PersonEntity;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaST:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpK()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpK()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown safe parcelable id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpK()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTR:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTS:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$AgeRangeEntity;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTT:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTU:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTW:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$CoverEntity;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTX:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzTa:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzsR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzwN:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTY:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$ImageEntity;

    goto :goto_0

    :pswitch_c
    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaTZ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzVT:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUa:Lcom/google/android/gms/plus/internal/model/people/PersonEntity$NameEntity;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUb:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUd:Ljava/util/List;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUe:Ljava/util/List;

    goto :goto_0

    :pswitch_13
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUh:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzF:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUi:Ljava/util/List;

    goto :goto_0

    :pswitch_18
    iget-boolean v0, p0, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzaUj:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public synthetic zzpD()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/people/PersonEntity;->zzBK()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

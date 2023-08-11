.class public final Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/ItemScope;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zza;

.field private static final zzaSS:Ljava/util/HashMap;


# instance fields
.field mName:Ljava/lang/String;

.field final mVersionCode:I

.field zzF:Ljava/lang/String;

.field zzGq:Ljava/lang/String;

.field zzaEl:D

.field zzaEm:D

.field final zzaST:Ljava/util/Set;

.field zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaSV:Ljava/util/List;

.field zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaSX:Ljava/lang/String;

.field zzaSY:Ljava/lang/String;

.field zzaSZ:Ljava/lang/String;

.field zzaTA:Ljava/util/List;

.field zzaTB:Ljava/lang/String;

.field zzaTC:Ljava/lang/String;

.field zzaTD:Ljava/lang/String;

.field zzaTE:Ljava/lang/String;

.field zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTG:Ljava/lang/String;

.field zzaTH:Ljava/lang/String;

.field zzaTI:Ljava/lang/String;

.field zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTK:Ljava/lang/String;

.field zzaTL:Ljava/lang/String;

.field zzaTM:Ljava/lang/String;

.field zzaTN:Ljava/lang/String;

.field zzaTa:Ljava/util/List;

.field zzaTb:I

.field zzaTc:Ljava/util/List;

.field zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTe:Ljava/util/List;

.field zzaTf:Ljava/lang/String;

.field zzaTg:Ljava/lang/String;

.field zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTi:Ljava/lang/String;

.field zzaTj:Ljava/lang/String;

.field zzaTk:Ljava/util/List;

.field zzaTl:Ljava/lang/String;

.field zzaTm:Ljava/lang/String;

.field zzaTn:Ljava/lang/String;

.field zzaTo:Ljava/lang/String;

.field zzaTp:Ljava/lang/String;

.field zzaTq:Ljava/lang/String;

.field zzaTr:Ljava/lang/String;

.field zzaTs:Ljava/lang/String;

.field zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTu:Ljava/lang/String;

.field zzaTv:Ljava/lang/String;

.field zzaTw:Ljava/lang/String;

.field zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field zzaqZ:Ljava/lang/String;

.field zzsX:Ljava/lang/String;

.field zzwN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/plus/internal/model/moments/zza;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/model/moments/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zza;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "about"

    const-string v2, "about"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "additionalName"

    const-string v2, "additionalName"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzn(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "addressCountry"

    const-string v2, "addressCountry"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "addressLocality"

    const-string v2, "addressLocality"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "addressRegion"

    const-string v2, "addressRegion"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "associated_media"

    const-string v2, "associated_media"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "attendeeCount"

    const-string v2, "attendeeCount"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzj(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "attendees"

    const-string v2, "attendees"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "audio"

    const-string v2, "audio"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "author"

    const-string v2, "author"

    const/16 v3, 0xc

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "bestRating"

    const-string v2, "bestRating"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "birthDate"

    const-string v2, "birthDate"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "byArtist"

    const-string v2, "byArtist"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "caption"

    const-string v2, "caption"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "contentSize"

    const-string v2, "contentSize"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "contentUrl"

    const-string v2, "contentUrl"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "contributor"

    const-string v2, "contributor"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "dateCreated"

    const-string v2, "dateCreated"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "datePublished"

    const-string v2, "datePublished"

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "embedUrl"

    const-string v2, "embedUrl"

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "endDate"

    const-string v2, "endDate"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "familyName"

    const-string v2, "familyName"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "geo"

    const-string v2, "geo"

    const/16 v3, 0x1d

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "givenName"

    const-string v2, "givenName"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0x21

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "inAlbum"

    const-string v2, "inAlbum"

    const/16 v3, 0x22

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    const/16 v3, 0x25

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzk(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x27

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "partOfTVSeries"

    const-string v2, "partOfTVSeries"

    const/16 v3, 0x28

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "performers"

    const-string v2, "performers"

    const/16 v3, 0x29

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "playerType"

    const-string v2, "playerType"

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "postOfficeBoxNumber"

    const-string v2, "postOfficeBoxNumber"

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "postalCode"

    const-string v2, "postalCode"

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "ratingValue"

    const-string v2, "ratingValue"

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "reviewRating"

    const-string v2, "reviewRating"

    const/16 v3, 0x2e

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "startDate"

    const-string v2, "startDate"

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "streetAddress"

    const-string v2, "streetAddress"

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    const/16 v3, 0x32

    const-class v4, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "thumbnailUrl"

    const-string v2, "thumbnailUrl"

    const/16 v3, 0x33

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "tickerSymbol"

    const-string v2, "tickerSymbol"

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/16 v3, 0x35

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    const-string v1, "worstRating"

    const-string v2, "worstRating"

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mVersionCode:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLjava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mVersionCode:I

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSV:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSX:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSY:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSZ:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTa:Ljava/util/List;

    iput p10, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTb:I

    iput-object p11, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTc:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p13, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTe:Ljava/util/List;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTf:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTg:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTi:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTj:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzsX:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTk:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTl:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTm:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTn:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaqZ:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTo:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTp:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTq:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTr:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTs:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTu:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTv:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzwN:Ljava/lang/String;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTw:Ljava/lang/String;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEl:D

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-wide/from16 v0, p39

    iput-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEm:D

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTA:Ljava/util/List;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTB:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTC:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTD:Ljava/lang/String;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTE:Ljava/lang/String;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTG:Ljava/lang/String;

    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTH:Ljava/lang/String;

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTI:Ljava/lang/String;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTK:Ljava/lang/String;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTL:Ljava/lang/String;

    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzGq:Ljava/lang/String;

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzF:Ljava/lang/String;

    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTM:Ljava/lang/String;

    move-object/from16 v0, p58

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLjava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p3, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSV:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSX:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSY:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSZ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTa:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTb:I

    iput-object p10, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTc:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object p12, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTe:Ljava/util/List;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTf:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTg:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTi:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTj:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzsX:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTk:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTl:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTm:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTn:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaqZ:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTo:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTp:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTq:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTr:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTs:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTu:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTv:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzwN:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTw:Ljava/lang/String;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-wide/from16 v0, p35

    iput-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEl:D

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-wide/from16 v0, p38

    iput-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEm:D

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mName:Ljava/lang/String;

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTA:Ljava/util/List;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTB:Ljava/lang/String;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTC:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTD:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTE:Ljava/lang/String;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTG:Ljava/lang/String;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTH:Ljava/lang/String;

    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTI:Ljava/lang/String;

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTK:Ljava/lang/String;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTL:Ljava/lang/String;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzGq:Ljava/lang/String;

    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzF:Ljava/lang/String;

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTM:Ljava/lang/String;

    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzBL()Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAbout()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getAdditionalName()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSV:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSX:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLocality()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSY:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSZ:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociated_media()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTa:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAttendeeCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTb:I

    return v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTc:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAudio()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getAuthor()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTe:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBestRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTf:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTg:Ljava/lang/String;

    return-object v0
.end method

.method public getByArtist()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTi:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTj:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzsX:Ljava/lang/String;

    return-object v0
.end method

.method public getContributor()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTk:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTl:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTm:Ljava/lang/String;

    return-object v0
.end method

.method public getDatePublished()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTn:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaqZ:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTo:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTp:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTq:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTr:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTs:Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTu:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTv:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzwN:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTw:Ljava/lang/String;

    return-object v0
.end method

.method public getInAlbum()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEl:D

    return-wide v0
.end method

.method public getLocation()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEm:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfTVSeries()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getPerformers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTA:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTB:Ljava/lang/String;

    return-object v0
.end method

.method public getPostOfficeBoxNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTC:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTD:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTE:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewRating()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTG:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTH:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTI:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTK:Ljava/lang/String;

    return-object v0
.end method

.method public getTickerSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzGq:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzF:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTM:Ljava/lang/String;

    return-object v0
.end method

.method public getWorstRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTN:Ljava/lang/String;

    return-object v0
.end method

.method public hasAbout()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAdditionalName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddress()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressCountry()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressLocality()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAddressRegion()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAssociated_media()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAttendeeCount()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAttendees()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAudio()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasAuthor()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBestRating()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasBirthDate()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasByArtist()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasCaption()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContentSize()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContentUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasContributor()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDateCreated()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDateModified()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDatePublished()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEmbedUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasEndDate()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFamilyName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGender()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGeo()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasInAlbum()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLatitude()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLocation()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasLongitude()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPartOfTVSeries()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPerformers()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPlayerType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPostOfficeBoxNumber()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPostalCode()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasRatingValue()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasReviewRating()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStreetAddress()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnail()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnailUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasTickerSymbol()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasWorstRating()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpK()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzb(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->CREATOR:Lcom/google/android/gms/plus/internal/model/moments/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/plus/internal/model/moments/zza;->zza(Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzBK()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSS:Ljava/util/HashMap;

    return-object v0
.end method

.method public zzBL()Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;
    .locals 0

    return-object p0
.end method

.method protected zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaST:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSU:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSV:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSW:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSX:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSY:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaSZ:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTa:Ljava/util/List;

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTc:Ljava/util/List;

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTd:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTe:Ljava/util/List;

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTf:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTg:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTh:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTi:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTj:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzsX:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTk:Ljava/util/List;

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTl:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTm:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTn:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaqZ:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTo:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTp:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTq:Ljava/lang/String;

    goto :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTr:Ljava/lang/String;

    goto :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTs:Ljava/lang/String;

    goto :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTt:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTu:Ljava/lang/String;

    goto :goto_0

    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTv:Ljava/lang/String;

    goto :goto_0

    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzwN:Ljava/lang/String;

    goto :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTw:Ljava/lang/String;

    goto :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTx:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_22
    iget-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEl:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTy:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_24
    iget-wide v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaEm:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->mName:Ljava/lang/String;

    goto :goto_0

    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTz:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto :goto_0

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTA:Ljava/util/List;

    goto :goto_0

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTB:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTC:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTD:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTE:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTF:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto/16 :goto_0

    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTG:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTH:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTI:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTJ:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    goto/16 :goto_0

    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTK:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTL:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzGq:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_34
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzF:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_35
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTM:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_36
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzaTN:Ljava/lang/String;

    goto/16 :goto_0

    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
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
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method public synthetic zzpD()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;->zzBK()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

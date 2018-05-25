view: user {
    sql_table_name: PUBLIC.USER ;;

    dimension: dev_mode_user_id {
      primary_key: yes
      type: number
      sql: ${TABLE}.DEV_MODE_USER_ID ;;
    }

    dimension: browser_count {
      type: number
      sql: ${TABLE}.BROWSER_COUNT ;;
    }

    dimension: chat_disabled {
      type: yesno
      sql: ${TABLE}.CHAT_DISABLED ;;
    }

    dimension: chat_popover {
      type: yesno
      sql: ${TABLE}.CHAT_POPOVER ;;
    }

    dimension_group: created {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.CREATED_AT ;;
    }

    dimension: dev_branch_name {
      type: string
      sql: ${TABLE}.DEV_BRANCH_NAME ;;
    }

    dimension: dev_mode {
      type: yesno
      sql: ${TABLE}.DEV_MODE ;;
    }

    dimension: editor_keybinding_mode {
      type: string
      sql: ${TABLE}.EDITOR_KEYBINDING_MODE ;;
    }

    dimension: email {
      type: string
      sql: ${TABLE}.EMAIL ;;
    }

    dimension: eula_accepted {
      type: yesno
      sql: ${TABLE}.EULA_ACCEPTED ;;
    }

    dimension_group: eula_accepted {
      type: time
      timeframes: [
        raw,
        time,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.EULA_ACCEPTED_TIME ;;
    }

    dimension: eula_accepted_version {
      type: string
      sql: ${TABLE}.EULA_ACCEPTED_VERSION ;;
    }

    dimension: external_avatar_url {
      type: string
      sql: ${TABLE}.EXTERNAL_AVATAR_URL ;;
    }

    dimension: first_name {
      type: string
      sql: ${TABLE}.FIRST_NAME ;;
    }

    dimension: home_space_id {
      type: string
      sql: ${TABLE}.HOME_SPACE_ID ;;
    }

    dimension: id {
      type: number
      sql: ${TABLE}.ID ;;
    }

    dimension: is_admin {
      type: yesno
      sql: ${TABLE}.IS_ADMIN ;;
    }

    dimension: is_disabled {
      type: yesno
      sql: ${TABLE}.IS_DISABLED ;;
    }

    dimension: is_looker_employee {
      type: yesno
      sql: ${TABLE}.IS_LOOKER_EMPLOYEE ;;
    }

    dimension: last_name {
      type: string
      sql: ${TABLE}.LAST_NAME ;;
    }

    dimension: locale {
      type: string
      sql: ${TABLE}.LOCALE ;;
    }

    dimension: marketing_email_updates {
      type: yesno
      sql: ${TABLE}.MARKETING_EMAIL_UPDATES ;;
    }

    dimension: models {
      type: string
      sql: ${TABLE}.MODELS ;;
    }

    dimension: models_dir {
      type: string
      sql: ${TABLE}.MODELS_DIR ;;
    }

    dimension: outgoing_access_token_id {
      type: number
      sql: ${TABLE}.OUTGOING_ACCESS_TOKEN_ID ;;
    }

    dimension: release_email_updates {
      type: yesno
      sql: ${TABLE}.RELEASE_EMAIL_UPDATES ;;
    }

    dimension: sticky_workspace_id {
      type: string
      sql: ${TABLE}.STICKY_WORKSPACE_ID ;;
    }

    dimension: timezone {
      type: string
      sql: ${TABLE}.TIMEZONE ;;
    }

    dimension: ui_state {
      type: string
      sql: ${TABLE}.UI_STATE ;;
    }

    dimension: version_set_id {
      type: number
      sql: ${TABLE}.VERSION_SET_ID ;;
    }

    measure: count {
      type: count
      drill_fields: [dev_mode_user_id, dev_branch_name, last_name, first_name]
    }
  }
